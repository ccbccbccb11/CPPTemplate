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

uint8_t DjiMotor::djimtr_ins_cnt_ = 0;              //电机实体计数
const uint8_t DjiMotor::djimtr_ins_cnt_max_ = 12;   //两路 can 允许最大电机总数
const uint8_t DjiMotor::djimtr_offline_cnt_max_ = 100;   //电机失联计数最大值
DjiMotor* djimtr_instance[DjiMotor::djimtr_ins_cnt_max_] = {NULL};   //用于遍历所有实体
/**
   * @brief DjiMotor类初始化函数，Dji电机初始化时调用
   * 
   */
void DjiMotor::DjiMotorInit(MotorInitConfig* config) {
 /**
  * @note 注册电机数量大于允许的最大值会在此处跑死
  */
  if (djimtr_ins_cnt_ >= djimtr_ins_cnt_max_) {
    while (1)
      continue;
  }
 /**
  * @note id 重复会在此处跑死
  */
  for (size_t i = 0; i < DjiMotor::djimtr_ins_cnt_; i++) {
    if (djimtr_instance[i]->GetRxID() == config->can_config.rx_id)
      while (1)
        stateinfo_.work_state_ = kMotorIDErr;
  }
  motor_type_ = config->motor_type; // 电机类型
  CANInfoInit(config);  // 分组
	group_enable_flag_[id_info_.group_] = kGroupOK;
	// can 实例调用构造函数初始化
  config->can_config.tx_id = this->id_info_.tx_id_;
  config->can_config.CANInstanceRxCallback = DjiMotor::GetCANRxMessage;
	config->can_config.parent_pointer = this;
  can_instance_ = new CANInstance(&config->can_config);
	// 心跳包实例调用构造函数初始化
	heartbeat_ = new HeartBeat(djimtr_offline_cnt_max_);
	//外部控制器配置
  external_control_ = config->external_control_config;
	// 电机 pid 参数初始化
  memset(&controler_, 0, sizeof(Control)); // 初始化pid参数结构体前先清空
  controler_.loop_ = config->loop;
  PIDInit(controler_.loop_, config);
	// 初始化成功标志位
	stateinfo_.init_flag_ = kMotorInit; 
	// 初始成功的电机加入 djimtr_instance 保存副本
	djimtr_instance[DjiMotor::djimtr_ins_cnt_++] = this;
}
/**
 * @brief 为大疆电机注册六组偷渡的未记录在案的 can 实例仅用于 can 发送
 *        当且仅当对应的任意组下有大疆电机注册才会执行发送对应的包
 *        组别与电机 id 关系如下：
 *        can1: [0]:0x1FF,[1]:0x200,[2]:0x2FF
 *        can2: [3]:0x1FF,[4]:0x200,[5]:0x2FF
 *        在命名空间djimtr中也有枚举定义。
 * @name  djimtr_CAN_txconfig[6] : 用于注册的配置参数
 *        djimtr_CAN_txgroup[6] : 注册六个分组
 * @note  C610(rm2006)/C620(rm3508):0x1ff,0x200;
 *        GM6020:0x1ff,0x2ff
 *        反馈(rx_id): GM6020: 0x204+id ; C610/C620: 0x200+id
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
 * @brief 上述的“当且仅当对应的任意组下有大疆电机注册才会发送”对应标志位
 */
MotorGroupInit DjiMotor::group_enable_flag_[kGroupSum] = { kGroupEmpty };
/**
 * @brief 遍历所有已注册的大疆电机，为其执行控制代码
 * 
 */
void DjiMotor::ControlTask(void) {
  float tar;
  float output;
  PIDLoop loop;
  uint8_t group_index;
  uint8_t txbuff_index;
  // memset(djimtr_txbuff, 0, sizeof(djimtr_txbuff));
  for (size_t i = 0; i < djimtr_ins_cnt_; i++) {
    djimtr_instance[i]->StateUpdate();
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
    // 更新发送数组到对应组别
    if (djimtr_instance[i]->stateinfo_.work_state_ == kMotorStop) {
      djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index, 0);
      djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index+1, 0);
    } else {
      djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index, (uint8_t)((int16_t)output >> 8));
      djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index+1, (uint8_t)((int16_t)output));
    }
    
  }
  for (size_t i = 0; i < kGroupSum; i++)
  {
    // 被初始化的组别才可以发送
    if(group_enable_flag_[group_index] == kGroupOK) {
      djimtr_CAN_txgroup[group_index].CANSend(&djimtr_CAN_txgroup[group_index]);
    }
  }
}
/**
 * @brief 接收
 * 
 */
void DjiMotor::GetCANRxMessage(CANInstance* can_ins) {
  // 通过父指针强转获得底层 can 实体对应的父类，将 can 报文更新到对应电机中去
  DjiMotor* djimtr_ = (DjiMotor*)can_ins->GetParentPoint();
  int16_t err;
  if (djimtr_->can_instance_->GetRxBuff() == nullptr)// 接受指针为空退出
    return;
  if (djimtr_->stateinfo_.init_flag_ == kMotorEmpty)// 电机未初始化退出
    return;
  djimtr_->rxinfo_.angle_ = djimtr_->CANGetAngle(djimtr_->can_instance_->GetRxBuff());
  djimtr_->rxinfo_.speed_ = djimtr_->CANGetSpeed(djimtr_->can_instance_->GetRxBuff());
  djimtr_->rxinfo_.current_ = djimtr_->CANGetCurrent(djimtr_->can_instance_->GetRxBuff());
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
  djimtr_->heartbeat_->ResetOfflineCnt();// 心跳更新
}