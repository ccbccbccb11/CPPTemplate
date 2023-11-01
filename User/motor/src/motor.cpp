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
#include "motor.hpp"

using namespace motor;

/**
   * @brief Motor class initialization function, called when the motor is initialized
   * 
   */
void Motor::MotorInit(MotorInitConfig* config) {
  motor_type_ = config->motor_type;
  // divide into groups
  CANInfoInit(config);  
	// Motor pid parameter initialization
  controler_.loop_ = config->loop;
  PIDInit(controler_.loop_, config);
}

/**
   * @brief Motor CAN information initialization function
   * 
   */
void Motor::CANInfoInit(MotorInitConfig* config) {
  id_info_.rx_id_ = config->can_config.rx_id;
  switch (config->motor_type) {
    case kRM2006:
    case kRM3508:
      if ((id_info_.rx_id_ - 0x201U) < 4) { 
        id_info_.tx_id_ = 0x200; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x200;
        else id_info_.group_ = kCAN2_0x200;
      } else { 
        id_info_.tx_id_ = 0x1FF; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x1FF;
        else id_info_.group_ = kCAN2_0x1FF;
      }
      id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x201U) % 4)*2;
      break;
    case kGM6020:
      if ((id_info_.rx_id_ - 0x205U) < 4) { 
        id_info_.tx_id_ = 0x1FF; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x1FF;
        else id_info_.group_ = kCAN2_0x1FF;
      } else { 
        id_info_.tx_id_ = 0x2FF; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x2FF;
        else id_info_.group_ = kCAN2_0x2FF;
      }
      id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x205U) % 4)*2;
      break;
    case kLkMtr:
      id_info_.rx_id_ = config->can_config.rx_id;
      id_info_.tx_id_ = 0x280;
      id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x141U) % 4)*2;
      break;
    
    default:
      while (1)
        stateinfo_.work_state_ = kMotorTypeErr;
  }
}

/**
   * @brief Motor PID parameter initialization function
   * 
   */
void Motor::PIDInit(PIDCtrlMode loop, MotorInitConfig* config) {
  int ittt = loop;
  switch (ittt) {
    case kPositLoop: {
			std::shared_ptr<PIDControler> positin = std::make_shared<PIDControler>(&config->PID_posit_inner_config);
      std::shared_ptr<PIDControler> positout = std::make_shared<PIDControler>(&config->PID_posit_outer_config);
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<PIDControler>>(kPositin, positin));
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<PIDControler>>(kPositout, positout));
      break;
    }
    case kSpeedLoop: {
      std::shared_ptr<PIDControler> speed = std::make_shared<PIDControler>(&config->PID_speed_config);
      auto it = controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<PIDControler>>(kSpeed, speed));
      bool state = it.second;
      break;
    }
    case kAngleLoop: {
      std::shared_ptr<PIDControler> anglein = std::make_shared<PIDControler>(&config->PID_angle_inner_config);
      std::shared_ptr<PIDControler> angleout = std::make_shared<PIDControler>(&config->PID_angle_outer_config);
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<PIDControler>>(kAnglein, anglein));
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<PIDControler>>(kAngleout, angleout));
      break;
    }
    case kCurrentLoop: {
      std::shared_ptr<PIDControler> current = std::make_shared<PIDControler>(&config->PID_current_config);
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<PIDControler>>(kCurrent, current));
      break;
    }
    default:
      while (1)
        continue;
      break;
  }
}

/**
 * @brief SpeedLoop is called in the main control loop. It is a single loop controler.
 *        It will return the output value of the controler.
 *        The output value is the voltage/current, which is the input of the motor.
 * @return float 
 */
float Motor::SpeedLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(kSpeed) == controler_.PID_map_.end())
    while (true)
      continue;
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[kSpeed]->GetInitFlag() == kPIDEmpty)
    while (true)
      continue;

  // Get the target speed.
  float tar = controler_.tar_;
  // Get the current speed.
  float speed;
  if (external_info_.GetMsrFlagBool(kSpeed))
    speed = external_info_.GetMsrValue(kSpeed);
  else
    speed = GetSpeed();
  // Calculate the output value of the controler.
  float output = controler_.PID_map_[kSpeed]->SingleLoop(tar, speed);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(kSpeed))
    output += external_info_.GetFFdValue(kSpeed);

  return output;
}

/**
 * @brief Motor PID angle Loop
 * 
 * @return float 
 */
float Motor::AngleLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(kAngleout) == controler_.PID_map_.end() || 
      controler_.PID_map_.find(kAnglein) == controler_.PID_map_.end()) {
    while (true)
      continue;
  }
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[kAngleout]->GetInitFlag() == kPIDEmpty || 
      controler_.PID_map_[kAnglein]->GetInitFlag() == kPIDEmpty) {
    while (true)
      continue;
  }

  // Get the target angle.
  float tar = controler_.tar_;
  // Get the current angle.
  float angle;
  // Get the current speed.
  float speed;
  // Calculate the output value of the controler.
  float output;

  if (external_info_.GetMsrFlagBool(kAngleout))
    angle = external_info_.GetMsrValue(kAngleout);
  else
    angle = GetAngle();
  if (external_info_.GetMsrFlagBool(kAnglein))
    speed = external_info_.GetMsrValue(kAnglein);
  else
    speed = GetSpeed();

  output = controler_.PID_map_[kAngleout]->SingleLoop(tar, angle, 8192);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(kAngleout))
    output += external_info_.GetFFdValue(kAngleout);

  output = controler_.PID_map_[kAnglein]->SingleLoop(output, speed);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(kAnglein))
    output += external_info_.GetFFdValue(kAnglein);
  return output;
}

/**
 * @brief Motor PID posit Loop
 * 
 * @return float 
 */
float Motor::PositLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(kPositout) == controler_.PID_map_.end() || 
      controler_.PID_map_.find(kPositin) == controler_.PID_map_.end()) {
    while (true)
      continue;
  }
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[kPositout]->GetInitFlag() == kPIDEmpty || 
      controler_.PID_map_[kPositin]->GetInitFlag() == kPIDEmpty) {
    while (true)
      continue;
  }
  
  // Get the target posit.
  float tar = controler_.tar_;
  // Get the current posit.
  float posit;
  // Get the current speed.
  float speed;
  // Calculate the output value of the controler.
  float output;

  if (external_info_.GetMsrFlagBool(kPositout))
    posit = external_info_.GetMsrValue(kPositout);
  else
    posit = GetPosit();
  if (external_info_.GetMsrFlagBool(kPositin))
    speed = external_info_.GetMsrValue(kPositin);
  else
    speed = GetSpeed();

  output = controler_.PID_map_[kPositout]->SingleLoop(tar, posit);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(kPositout))
    output += external_info_.GetFFdValue(kPositout);

  output = controler_.PID_map_[kPositin]->SingleLoop(output, speed);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(kPositin))
    output += external_info_.GetFFdValue(kPositin);
  return output;
}

/**
 * @brief Motor PID current Loop
 * 
 * @return float 
 */
float Motor::CurrentLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(kCurrent) == controler_.PID_map_.end())
    while (true)
      continue;
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[kCurrent]->GetInitFlag() == kPIDEmpty)
    while (true)
      continue;

  // Get the target current.
  float tar = controler_.tar_;
  // Get the current current.
  float current;
  // Calculate the output value of the controler.
  float output;

  if (external_info_.GetMsrFlagBool(kCurrent))
    current = external_info_.GetMsrValue(kCurrent);
  else
    current = GetCurrent();

  output = controler_.PID_map_[kCurrent]->SingleLoop(tar, current);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(kCurrent))
    output += external_info_.GetFFdValue(kCurrent);

  return output;
}