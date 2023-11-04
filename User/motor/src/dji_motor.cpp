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
/**
 * @todo 节点式收取 can 消息
*/
/* Includes -----------------------------------------------------------------*/
#include "dji_motor.hpp"
#include "kalman.hpp"

const uint8_t motor::DjiMotor::djimtr_offline_cnt_max_ = 100;    // The maximum number of lost connections(ms)
std::map<uint32_t, motor::DjiMotor*> djimtr_can1_node_map;       // use a map to store the motor nodes of CAN1
std::map<uint32_t, motor::DjiMotor*> djimtr_can2_node_map;       // use a map to store the motor nodes of CAN2
/**
   * @brief DjiMotor class initialization function, called when the Dji motor is initialized
   * 
   */
void motor::DjiMotor::DjiMotorInit(motordef::MotorInitConfig* config) {
  this->MotorInit(config);
	group_enable_flag_[id_info_.group_] = motordef::kGroupOK;
	// can Instance call constructor initialization
  config->can_config.tx_id = this->id_info_.tx_id_;
  config->can_config.CANInstanceRxCallback = motor::DjiMotor::GetCANRxMessage;
  can_instance_.CANInsInit(&config->can_config);
	// HeartBeat instance call constructor initialization
	heartbeat_.HeartBeatInsInit(motor::DjiMotor::djimtr_offline_cnt_max_);
	// The initial successful motor is added to map to save a copy
  if (can_instance_.GetCANHandle() == &hcan1)
    djimtr_can1_node_map.insert(std::pair<uint32_t, motor::DjiMotor*>(can_instance_.GetRxId(), this));
  else
    djimtr_can2_node_map.insert(std::pair<uint32_t, motor::DjiMotor*>(can_instance_.GetRxId(), this));
  
	// Initialization success flag
	stateinfo_.init_flag_ = motordef::kMotorInit; 
}
/**
 * @brief Register six sets of can instances for DJI Electric only for can sending
 *        If and only if there is a DJI motor registration in the corresponding group, the corresponding package will be sent
 *        The relationship between group and motor id is as follows:
 *        can1: [0]:0x1FF,[1]:0x200,[2]:0x2FF
 *        can2: [3]:0x1FF,[4]:0x200,[5]:0x2FF
 *        There are also enumeration definitions in the namespace djimtr.
 * @name  djimtr_CAN_txconfig[6] : Configuration parameters for registration
 * @name  djimtr_CAN_txgroup[6] : Register six groups
 * @note  C610(rm2006)/C620(rm3508):0x1ff,0x200;
 *        GM6020:0x1ff,0x2ff
 *        rx_id: GM6020: 0x204+id ; C610/C620: 0x200+id
 */
static CANInstanceTxConfig djimtr_CAN_txconfig[motordef::kGroupSum] = {
  {.can_handle = &hcan1, .tx_id = 0x1ff},
  {.can_handle = &hcan1, .tx_id = 0x200},
  {.can_handle = &hcan1, .tx_id = 0x2ff},
  {.can_handle = &hcan2, .tx_id = 0x1ff},
  {.can_handle = &hcan2, .tx_id = 0x200},
  {.can_handle = &hcan2, .tx_id = 0x2ff},
};

static CANInstance djimtr_CAN_txgroup[motordef::kGroupSum] = {
  CANInstance(&djimtr_CAN_txconfig[motordef::kCAN1_0x1FF]),
  CANInstance(&djimtr_CAN_txconfig[motordef::kCAN1_0x200]),
  CANInstance(&djimtr_CAN_txconfig[motordef::kCAN1_0x2FF]),
  CANInstance(&djimtr_CAN_txconfig[motordef::kCAN2_0x1FF]),
  CANInstance(&djimtr_CAN_txconfig[motordef::kCAN2_0x200]),
  CANInstance(&djimtr_CAN_txconfig[motordef::kCAN2_0x2FF]),
};

motordef::MotorGroupInit motor::DjiMotor::group_enable_flag_[motordef::kGroupSum] = { motordef::kGroupEmpty };  // Send enable flag

/**
 * @brief DjiMotor PID calculate
 * 
 * @param 
 */
void motor::DjiMotor::PIDCal(void) {
  float output;
  motordef::PIDCtrlMode loop;
  uint8_t group_index;
  uint8_t txbuff_index;
  StateUpdate();
  loop = GetPIDLoop();
  group_index = GetGroupIndex();
  txbuff_index = GetTxBuffIndex();
  switch (loop) {
    case motordef::kPIDClose:
      output = 0.f;
      break;
    case motordef::kPositLoop:
      output = PositLoop();
      break;
    case motordef::kSpeedLoop:
      output = SpeedLoop();
      break;
    case motordef::kAngleLoop:
      output = AngleLoop();
      break;
    case motordef::kCurrentLoop:
      output = CurrentLoop();
      break;
    case motordef::kOuterLoop:
      output = GetDirectOut();
      break;
    
    default:
      break;
  }
  output = math::Limit(output, -controler_.output_max_, controler_.output_max_);
  controler_.out_ = output;
    
  // Update send array to corresponding group
  if (stateinfo_.work_state_ == motordef::kMotorOffline) {
    controler_.dct_out_ = 0;
    controler_.out_ = 0;
    controler_.tar_ = 0;
    return;
  } else if (stateinfo_.work_state_ == motordef::kMotorStop) {
    djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index, 0);
    djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index+1, 0);
  } else if (stateinfo_.work_state_ == motordef::kMotorOnline) {
    djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index, (uint8_t)((int16_t)controler_.out_ >> 8));
    djimtr_CAN_txgroup[group_index].SetTxbuff(txbuff_index+1, (uint8_t)((int16_t)controler_.out_));
  }
  
}


/**
 * @brief 
 * 
 */
void motor::DjiMotor::ControlTask(void) {
  motor::DjiMotor* djimtr_;
  for (auto it=djimtr_can1_node_map.begin(); it!=djimtr_can1_node_map.end(); it++) {
    djimtr_ = it->second;
    djimtr_->PIDCal();
  }
  for (auto it=djimtr_can2_node_map.begin(); it!=djimtr_can2_node_map.end(); it++) {
    djimtr_ = it->second;
    djimtr_->PIDCal();
  }

  // Transmit six sets of data in sequence
  for (size_t i = 0; i < motordef::kGroupSum; i++) {
    // Only initialized groups can be sent
    if(group_enable_flag_[i] == motordef::kGroupOK) {
      djimtr_CAN_txgroup[i].Transmit();
    }
  }
}

/**
 * @brief Receive messages
 * 
 */
void motor::DjiMotor::GetCANRxMessage(CANInstance* can_ins) {
  motor::DjiMotor* djimtr_;
  if (can_ins->GetCANHandle() == &hcan1)
    djimtr_ = djimtr_can1_node_map[can_ins->GetRxId()];
  else
    djimtr_ = djimtr_can2_node_map[can_ins->GetRxId()];

  int16_t err;
  if (djimtr_->can_instance_.GetRxBuff() == nullptr)// Accepts a null pointer to exit
    return;
  if (djimtr_->stateinfo_.init_flag_ == motordef::kMotorEmpty)// Motor does not initialize exit
    return;
  djimtr_->rxinfo_.angle_ = djimtr_->CANGetAngle(djimtr_->can_instance_.GetRxBuff());
  djimtr_->rxinfo_.speed_ = djimtr_->CANGetSpeed(djimtr_->can_instance_.GetRxBuff());
  djimtr_->rxinfo_.current_ = djimtr_->CANGetCurrent(djimtr_->can_instance_.GetRxBuff());
  djimtr_->rxinfo_.temperature_ = djimtr_->CANGetTemperature(djimtr_->can_instance_.GetRxBuff());
  if (!djimtr_->rxinfo_.angle_prev_ && !djimtr_->rxinfo_.angle_sum_) {
    err = 0;
  } else {
    err = djimtr_->rxinfo_.angle_ - djimtr_->rxinfo_.angle_prev_;
  }
  if (math::Abs(err) > 4095) {
    if (err >= 0) {
      djimtr_->rxinfo_.angle_sum_ += -8191 + err;
    } else {
      djimtr_->rxinfo_.angle_sum_ +=  8191 + err;
    }
  } else {
    djimtr_->rxinfo_.angle_sum_ += err;
  }
  djimtr_->rxinfo_.angle_prev_ = djimtr_->rxinfo_.angle_;
  djimtr_->heartbeat_.ResetOfflineCnt();// Heartbeat update
}