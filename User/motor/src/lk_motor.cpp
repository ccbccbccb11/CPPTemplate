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
#include "lk_motor.hpp"
#include <map>

using namespace lkmtr;

uint8_t LkMotor::lkmtr_ins_cnt_ = 0;              //电机实体计数
const uint8_t LkMotor::lkmtr_ins_cnt_max_ = 4;   //允许最大电机总数
const uint8_t LkMotor::lkmtr_offline_cnt_max_ = 100;   //电机失联计数最大值
std::map<uint32_t, LkMotor*>  lkmtr_can1_node_map;  // use a map to store the motor nodes of CAN1
std::map<uint32_t, LkMotor*> lkmtr_can2_node_map;  // use a map to store the motor nodes of CAN2

/**
   * @brief LkMotor类初始化函数，Lk电机初始化时调用
   * 
   */
void LkMotor::LkMotorInit(MotorInitConfig* config) {
 /**
  * @note 注册电机数量大于允许的最大值会在此处跑死
  */
  if (lkmtr_ins_cnt_ >= lkmtr_ins_cnt_max_) {
    while (1)
      continue;
  }
 /**
  * @note id 重复会在此处跑死
  * @todo id 重复检测
  */
  if (config->can_config.can_handle == &hcan1) {
    if (!group_enable_flag_[0])
      group_enable_flag_[0] = kGroupOK;
  } else {
    if (!group_enable_flag_[1])
      group_enable_flag_[1] = kGroupOK;
  }
	// can 实例调用构造函数初始化
  config->can_config.tx_id = this->id_info_.tx_id_;
  config->can_config.CANInstanceRxCallback = LkMotor::GetCANRxMessage;
  can_instance_ = new CANInstance(&config->can_config);
	// 心跳包实例调用构造函数初始化
	heartbeat_ = new HeartBeat(lkmtr_offline_cnt_max_);
	// 初始成功的电机加入 map 保存副本
  if (can_instance_->GetCANHandle() == &hcan1)
    lkmtr_can1_node_map.insert(std::pair<uint32_t, LkMotor *>(can_instance_->GetRxId(), this));
  else
    lkmtr_can2_node_map.insert(std::pair<uint32_t, LkMotor *>(can_instance_->GetRxId(), this));
  
  if (lkmtr_can1_node_map.size() > LkMotor::lkmtr_ins_cnt_max_ || lkmtr_can2_node_map.size() > LkMotor::lkmtr_ins_cnt_max_)
    while (true)
      continue;
}

/**
 * @brief 为翎控电机注册六组偷渡的未记录在案的 can 实例仅用于 can 发送
 *        当且仅当对应的任意组下有翎控电机注册才会执行发送对应的包
 * @note  rx_id: 0x280
 *        rx_id: 0x140 + x
 */
static CANInstanceTxConfig lkmtr_CAN1_txconfig = {
  .can_handle = &hcan1, 
  .tx_id = 0x280,
};
static CANInstanceTxConfig lkmtr_CAN2_txconfig = {
  .can_handle = &hcan2, 
  .tx_id = 0x280,
};
static CANInstance lkmtr_CAN_txgroup[2] = {
  CANInstance(&lkmtr_CAN1_txconfig),
  CANInstance(&lkmtr_CAN2_txconfig),
};
/**
 * @brief 发送标志位
 */
MotorGroupInit LkMotor::group_enable_flag_[2] = { kGroupEmpty };

void LkMotor::PIDCal(LkMotor* lkmtr) {
  float tar;
  float output;
  PIDLoop loop;
  uint8_t group_index;
  uint8_t txbuff_index;
  lkmtr->StateUpdate();
  tar = lkmtr->GetPIDTarget();
  loop = lkmtr->GetPIDLoop();
  group_index = lkmtr->GetGroupIndex();
  txbuff_index = lkmtr->GetTxBuffIndex();
  switch (loop) {
    case kPIDClose:
      output = 0.f;
      break;
    case kPositLoop:
      output = lkmtr->PositLoop();
      break;
    case kSpeedLoop:
      output = lkmtr->SpeedLoop();
      break;
    case kAngleLoop:
      output = lkmtr->AngleLoop();
      break;
    case kCurrentLoop:
      output = lkmtr->CurrentLoop();
      break;
    
    default:
      break;
  }
    
  // Update send array to corresponding group
  if (lkmtr->stateinfo_.work_state_ == kMotorStop) {
    lkmtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index, 0);
    lkmtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index+1, 0);
  } else {
    lkmtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index, (uint8_t)((int16_t)output >> 8));
    lkmtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index+1, (uint8_t)((int16_t)output));
  }
}

void LkMotor::ControlTask(void) {
  LkMotor* lkmtr_;
  for (auto it=lkmtr_can1_node_map.begin(); it!=lkmtr_can1_node_map.end(); it++) {
    lkmtr_ = it->second;
    LkMotor::PIDCal(lkmtr_);
  }
  for (auto it=lkmtr_can2_node_map.begin(); it!=lkmtr_can2_node_map.end(); it++) {
    lkmtr_ = it->second;
    LkMotor::PIDCal(lkmtr_);
  }

  // Transmit two sets of data in sequence 
  for (size_t i = 0; i < 2; i++) {
    // 被初始化的组别才可以发送
    if(group_enable_flag_[i] == kGroupOK) {
      lkmtr_CAN_txgroup[i].CANSend(&lkmtr_CAN_txgroup[i]);
    }
  }
}
/**
 * @brief 接收
 * 
 */
void LkMotor::GetCANRxMessage(CANInstance* can_ins) {
  LkMotor* lkmtr_;
  if (can_ins->GetCANHandle() == &hcan1)
    lkmtr_ = lkmtr_can1_node_map[can_ins->GetRxId()];
  else
    lkmtr_ = lkmtr_can2_node_map[can_ins->GetRxId()];

  int16_t err;
  if (lkmtr_->can_instance_->GetRxBuff() == nullptr)// 接受指针为空退出
    return;
  if (lkmtr_->stateinfo_.init_flag_ == kMotorEmpty)// 电机未初始化退出
    return;
  lkmtr_->rxinfo_.angle_ = lkmtr_->CANGetAngle(lkmtr_->can_instance_->GetRxBuff());
  lkmtr_->rxinfo_.speed_ = lkmtr_->CANGetSpeed(lkmtr_->can_instance_->GetRxBuff());
  lkmtr_->rxinfo_.current_ = lkmtr_->CANGetCurrent(lkmtr_->can_instance_->GetRxBuff());
  lkmtr_->rxinfo_.temperature_ = lkmtr_->CANGetTemperature(lkmtr_->can_instance_->GetRxBuff());
  if (!lkmtr_->rxinfo_.angle_prev_ && !lkmtr_->rxinfo_.angle_sum_) {
    err = 0;
  } else {
    err = lkmtr_->rxinfo_.angle_ - lkmtr_->rxinfo_.angle_prev_;
  }
  if (math::Abs(err) > 8191) {
    if (err >= 0) {
      lkmtr_->rxinfo_.angle_sum_ += -16383 + err;
    } else {
      lkmtr_->rxinfo_.angle_sum_ += 16383 + err;
    }
  } else {
    lkmtr_->rxinfo_.angle_sum_ += err;
  }
  lkmtr_->rxinfo_.angle_prev_ = lkmtr_->rxinfo_.angle_;
  lkmtr_->heartbeat_->ResetOfflineCnt();// 心跳更新
}