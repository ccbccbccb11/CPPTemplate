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

using namespace lkmtr;

const uint8_t LkMotor::lkmtr_offline_cnt_max_ = 100;    // The maximum number of lost connections(ms)
std::map<uint32_t, LkMotor*>  lkmtr_can1_node_map;      // use a map to store the motor nodes of CAN1
std::map<uint32_t, LkMotor*> lkmtr_can2_node_map;       // use a map to store the motor nodes of CAN2

/**
   * @brief LkMotor class initialization function, called when the Lk motor is initialized
   * 
   */
void LkMotor::LkMotorInit(MotorInitConfig* config) {
  if (config->can_config.can_handle == &hcan1) {
    if (!group_enable_flag_[0])
      group_enable_flag_[0] = kGroupOK;
  } else {
    if (!group_enable_flag_[1])
      group_enable_flag_[1] = kGroupOK;
  }

	// can Instance call constructor initialization
  config->can_config.tx_id = this->id_info_.tx_id_;
  config->can_config.CANInstanceRxCallback = LkMotor::GetCANRxMessage;
  can_instance_ = new CANInstance(&config->can_config);
	// HeartBeat instance call constructor initialization
	heartbeat_ = new HeartBeat(lkmtr_offline_cnt_max_);
	// The initial successful motor is added to map to save a copy
  if (can_instance_->GetCANHandle() == &hcan1)
    lkmtr_can1_node_map.insert(std::pair<uint32_t, LkMotor *>(can_instance_->GetRxId(), this));
  else
    lkmtr_can2_node_map.insert(std::pair<uint32_t, LkMotor *>(can_instance_->GetRxId(), this));
	// Initialization success flag
	stateinfo_.init_flag_ = kMotorInit; 
}

/**
 * @brief The corresponding packet will be sent if and only if 
 *        the corresponding motor is registered under any corresponding group
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

MotorGroupInit LkMotor::group_enable_flag_[2] = { kGroupEmpty };  // Send enable flag

/**
 * @brief LkMotor PID calculate
 * 
 * @param 
 */
void LkMotor::PIDCal(void) {
  float output;
  PIDLoop loop;
  uint8_t group_index;
  uint8_t txbuff_index;
  StateUpdate();
  loop = GetPIDLoop();
  group_index = GetGroupIndex();
  txbuff_index = GetTxBuffIndex();
  switch (loop) {
    case kPIDClose:
      output = 0.f;
      break;
    case kPositLoop:
      output = PositLoop();
      break;
    case kSpeedLoop:
      output = SpeedLoop();
      break;
    case kAngleLoop:
      output = AngleLoop();
      break;
    case kCurrentLoop:
      output = CurrentLoop();
      break;
    case kOuterLoop:
      output = GetDirectOut();
      break;
    
    default:
      break;
  }
    
  // Update send array to corresponding group
  if (stateinfo_.work_state_ == kMotorStop) {
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
    lkmtr_->PIDCal();
  }
  for (auto it=lkmtr_can2_node_map.begin(); it!=lkmtr_can2_node_map.end(); it++) {
    lkmtr_ = it->second;
    lkmtr_->PIDCal();
  }

  // Transmit two sets of data in sequence 
  for (size_t i = 0; i < 2; i++) {
    // Only initialized groups can be sent
    if(group_enable_flag_[i] == kGroupOK) {
      lkmtr_CAN_txgroup[i].CANSend(&lkmtr_CAN_txgroup[i]);
    }
  }
}
/**
 * @brief Receive messages
 * 
 */
void LkMotor::GetCANRxMessage(CANInstance* can_ins) {
  LkMotor* lkmtr_;
  if (can_ins->GetCANHandle() == &hcan1)
    lkmtr_ = lkmtr_can1_node_map[can_ins->GetRxId()];
  else
    lkmtr_ = lkmtr_can2_node_map[can_ins->GetRxId()];

  int16_t err;
  if (lkmtr_->can_instance_->GetRxBuff() == nullptr)// Accepts a null pointer to exit
    return;
  if (lkmtr_->stateinfo_.init_flag_ == kMotorEmpty)// Motor does not initialize exit
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
  lkmtr_->heartbeat_->ResetOfflineCnt();// Heartbeat update
}