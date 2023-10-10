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
static DjiMotor* djimtr_instance[DjiMotor::djimtr_ins_cnt_max_] = {NULL};   //���ڱ�������ʵ��
/**
   * @brief DjiMotor�๹�캯����Dji�����ʼ��ʱ����
   * 
   */
DjiMotor::DjiMotor(MotorInitConfig* config) : 
    // can ʵ�����ù��캯����ʼ��
    can_instance_(&config->can_config), 
    // ������ʵ�����ù��캯����ʼ��
    heartbeat_(djimtr_offline_cnt_max_) {
  /**
   *  ע��������������������ֵ���ڴ˴�����
   */
  if (djimtr_ins_cnt_ >= djimtr_ins_cnt_max_) {
    while (1)
      continue;
  }
  motor_type_ = config->motor_type; // �������
  // �� can ʵ���Ľ����жϻص����������Ľ���Э�麯��
  can_instance_.SetCANInstanceRxCallback(std::bind(&DjiMotor::GetCANRxMessage, this)); 
  DivideintoGroup(config);  // ����
  memcpy(&external_control_, config->external_control_config, sizeof(ExternalControl)); //�ⲿ����������
  // @todo ��� pid ������ʼ��δ���
  memset(&controler_, 0, sizeof(Control)); // ��ʼ��pid�����ṹ��ǰ�����
  controler_.loop_ = config->loop;
  

  stateinfo_.init_flag_ = kMotorInit; // ��ʼ���ɹ���־λ
  djimtr_instance[DjiMotor::djimtr_ins_cnt_++] = this; // ��ʼ�ɹ��ĵ������ djimtr_instance ���渱��
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
  int16_t output;
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
