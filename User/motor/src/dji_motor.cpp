/**
 ******************************************************************************
 * @file    .cpp/h
 * @brief   
 * @author  CCB
 * @note    finish 
 ******************************************************************************
 * Copyright (c) 2024 Team RobotPilots-SZU
 * All rights reserved.
 ******************************************************************************
 */
/* Includes -----------------------------------------------------------------*/
#include "dji_motor.hpp"

using namespace djimtr;

uint8_t DjiMotor::djimtr_ins_cnt_ = 0;              //���ʵ�弼��
const uint8_t DjiMotor::djimtr_ins_cnt_max_ = 12;   //��· can �������������
const uint8_t DjiMotor::djimtr_offline_cnt_max_ = 100;   //���ʧ���������ֵ
DjiMotor* djimtr_instance[DjiMotor::djimtr_ins_cnt_max_] = {NULL};   //���ڱ�������ʵ��
/**
   * @brief DjiMotor�๹�캯����Dji�����ʼ��ʱ����
   * 
   */
DjiMotor::DjiMotor(MotorInitConfig* config) {
 /**
  *  ע��������������������ֵ���ڴ˴�����
  */
  if (djimtr_ins_cnt_ >= djimtr_ins_cnt_max_) {
    while (1)
      continue;
  }
  motor_type_ = config->motor_type; // �������
  DivideintoGroup(config);  // ����
	// can ʵ�����ù��캯����ʼ��
  config->can_config.tx_id = this->id_info_.tx_id_;
  config->can_config.CANInstanceRxCallback = DjiMotor::GetCANRxMessage;
	config->can_config.parent_pointer = this;
  can_instance_ = new CANInstance(&config->can_config);
  /**
   * @todo ֻҪ����������仰ǰ��� can ʵ����Ķ���ֱ�Ӵ���
   *        heartbeat_ = new HeartBeat(djimtr_offline_cnt_max_);
   */
	// ������ʵ�����ù��캯����ʼ��
	heartbeat_ = new HeartBeat(djimtr_offline_cnt_max_);
	//�ⲿ����������
  memcpy(&external_control_, config->external_control_config, sizeof(ExternalControl)); 
	// ��� pid ������ʼ��
  memset(&controler_, 0, sizeof(Control)); // ��ʼ��pid�����ṹ��ǰ�����
  controler_.loop_ = config->loop;
  controler_.anglein_ = PIDControler(&config->PID_angle_inner_config);
  controler_.angleout_ = PIDControler(&config->PID_angle_outer_config);
  controler_.speed_ = PIDControler(&config->PID_speed_config);
  controler_.positin_ = PIDControler(&config->PID_posit_inner_config);
  controler_.positout_ = PIDControler(&config->PID_posit_outer_config);
  controler_.current_ = PIDControler(&config->PID_current_config);
	// ��ʼ���ɹ���־λ
	stateinfo_.init_flag_ = kMotorInit; 
	// ��ʼ�ɹ��ĵ������ djimtr_instance ���渱��
	djimtr_instance[DjiMotor::djimtr_ins_cnt_++] = this;
}
/**
 * @brief Ϊ�󽮵��ע������͵�ɵ�δ��¼�ڰ��� can ʵ�������� can ����
 *        ���ҽ�����Ӧ�����������д󽮵��ע��Ż�ִ�з��Ͷ�Ӧ�İ�
 *        ������� id ��ϵ���£�
 *        can1: [0]:0x1FF,[1]:0x200,[2]:0x2FF
 *        can2: [3]:0x1FF,[4]:0x200,[5]:0x2FF
 *        �������ռ�djimtr��Ҳ��ö�ٶ��塣
 * @name  djimtr_CAN_txconfig[6] : ����ע������ò���
 *        djimtr_CAN_txgroup[6] : ע����������
 * @note  C610(rm2006)/C620(rm3508):0x1ff,0x200;
 *        GM6020:0x1ff,0x2ff
 *        ����(rx_id): GM6020: 0x204+id ; C610/C620: 0x200+id
 */
static CANInstanceTxConfig djimtr_CAN_txconfig[kGroupSum] = {
  [kCAN1_0x1FF] = {.can_handle = &hcan1, .tx_id = 0x1ff},
  [kCAN1_0x200] = {.can_handle = &hcan1, .tx_id = 0x200},
  [kCAN1_0x2FF] = {.can_handle = &hcan1, .tx_id = 0x2ff},
  [kCAN2_0x1FF] = {.can_handle = &hcan2, .tx_id = 0x1ff},
  [kCAN2_0x200] = {.can_handle = &hcan2, .tx_id = 0x200},
  [kCAN2_0x2FF] = {.can_handle = &hcan2, .tx_id = 0x2ff},
};
static CANInstance djimtr_CAN_txgroup[kGroupSum] = {
  CANInstance(&djimtr_CAN_txconfig[kCAN1_0x1FF]),
  CANInstance(&djimtr_CAN_txconfig[kCAN1_0x200]),
  CANInstance(&djimtr_CAN_txconfig[kCAN1_0x2FF]),
  CANInstance(&djimtr_CAN_txconfig[kCAN2_0x1FF]),
  CANInstance(&djimtr_CAN_txconfig[kCAN2_0x200]),
  CANInstance(&djimtr_CAN_txconfig[kCAN2_0x2FF]),
};
/**
 * @brief �����ġ����ҽ�����Ӧ�����������д󽮵��ע��Żᷢ�͡���Ӧ��־λ
 */
MotorGroupInit DjiMotor::group_enable_flag_[kGroupSum] = { kGroupEmpty };

/**
 * @brief ����������ע��Ĵ󽮵����Ϊ��ִ�п��ƴ���
 * 
 */
static uint8_t djimtr_txbuff[8];
void DjiMotor::ControlTask(void) {
  float tar;
  float output;
  PIDLoop loop;
  uint8_t group_index;
  uint8_t txbuff_index;
  // memset(djimtr_txbuff, 0, sizeof(djimtr_txbuff));
  for (size_t i = 0; i < djimtr_ins_cnt_; i++) {
    tar = djimtr_instance[i]->GetPIDTarget();
    loop = djimtr_instance[i]->GetPIDLoop();
    group_index = djimtr_instance[i]->GetGroupIndex();
    txbuff_index = djimtr_instance[i]->GetTxBuffIndex();
    switch (loop) {
      case kPIDClose:
      output = 0.f;
        break;
      case kPositLoop:
        output = djimtr_instance[i]->PositLoop();
        break;
      case kSpeedLoop:
        output = djimtr_instance[i]->SpeedLoop();
        break;
      case kAngleLoop:
        output = djimtr_instance[i]->AngleLoop();
        break;
      case kCurrentLoop:
        output = djimtr_instance[i]->CurrentLoop();
        break;
      
      default:
        break;
    }
    djimtr_CAN_txgroup[group_index].SetTxbuff(2*txbuff_index, (uint8_t)((int16_t)output >> 8));
    djimtr_CAN_txgroup[group_index].SetTxbuff(2*txbuff_index+1, (uint8_t)((int16_t)output));
  }
  for (size_t i = 0; i < kGroupSum; i++)
  {
    if(group_enable_flag_[group_index] == kGroupOK) {
      djimtr_CAN_txgroup[group_index].CANSend(&djimtr_CAN_txgroup[group_index]);
    }
  }
}

/**
 * @brief ����
 * 
 */
void DjiMotor::GetCANRxMessage(CANInstance* can_ins) {
    DjiMotor* djimtr_ = (DjiMotor*)can_ins->GetParentPoint();
    int16_t err;
    if (djimtr_->can_instance_->GetRxBuff() == nullptr)
      return;
    if (djimtr_->stateinfo_.init_flag_ == kMotorEmpty)
      return;
    djimtr_->rxinfo_.angle_ = djimtr_->CANGetAngle(djimtr_->can_instance_->GetRxBuff());
    djimtr_->rxinfo_.speed_ = djimtr_->CANGetSpeed(djimtr_->can_instance_->GetRxBuff());
    djimtr_->rxinfo_.current_ = djimtr_->CANGetCurrent(djimtr_->can_instance_->GetRxBuff());
    djimtr_->rxinfo_.torque_ = djimtr_->CANGetTorque(djimtr_->can_instance_->GetRxBuff());
    djimtr_->rxinfo_.temperature_ = djimtr_->CANGetTemperature(djimtr_->can_instance_->GetRxBuff());
    if (!djimtr_->rxinfo_.angle_prev_ && !djimtr_->rxinfo_.angle_sum_) {
      err = 0;
    } else {
      err = djimtr_->rxinfo_.angle_ - djimtr_->rxinfo_.angle_prev_;
    }
    if (math::Abs(err) > 4095) {
      if (err >= 0) {
        djimtr_->rxinfo_.angle_sum_ += -8191 + err;
      } else {
        djimtr_->rxinfo_.angle_sum_ += 8191 + err;
      }
    } else {
      djimtr_->rxinfo_.angle_sum_ += err;
    }
    djimtr_->rxinfo_.angle_prev_ = djimtr_->rxinfo_.angle_;		
    djimtr_->heartbeat_->ResetOfflineCnt();
  }