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

/**
   * @brief Motor class initialization function, called when the motor is initialized
   * 
   */
void motor::Motor::MotorInit(motordef::MotorInitConfig* config) {
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
void motor::Motor::CANInfoInit(motordef::MotorInitConfig* config) {
  id_info_.rx_id_ = config->can_config.rx_id;
  switch (config->motor_type) {
    case motordef::kRM2006:
    case motordef::kRM3508:
      if ((id_info_.rx_id_ - 0x201U) < 4) { 
        id_info_.tx_id_ = 0x200; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = motordef::kCAN1_0x200;
        else id_info_.group_ = motordef::kCAN2_0x200;
      } else { 
        id_info_.tx_id_ = 0x1FF; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = motordef::kCAN1_0x1FF;
        else id_info_.group_ = motordef::kCAN2_0x1FF;
      }
      id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x201U) % 4)*2;
      break;
    case motordef::kGM6020:
      if ((id_info_.rx_id_ - 0x205U) < 4) { 
        id_info_.tx_id_ = 0x1FF; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = motordef::kCAN1_0x1FF;
        else id_info_.group_ = motordef::kCAN2_0x1FF;
      } else { 
        id_info_.tx_id_ = 0x2FF; 
        if (config->can_config.can_handle == &hcan1) id_info_.group_ = motordef::kCAN1_0x2FF;
        else id_info_.group_ = motordef::kCAN2_0x2FF;
      }
      id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x205U) % 4)*2;
      break;
    case motordef::kLkMtr:
      id_info_.rx_id_ = config->can_config.rx_id;
      id_info_.tx_id_ = 0x280;
      id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x141U) % 4)*2;
      break;
    
    default:
      while (1)
        stateinfo_.work_state_ = motordef::kMotorTypeErr;
  }
}

/**
   * @brief Motor PID parameter initialization function
   * 
   */
void motor::Motor::PIDInit(motordef::PIDCtrlMode loop, motordef::MotorInitConfig* config) {
  int ittt = loop;
  switch (ittt) {
    case motordef::kPositLoop: {
			auto positin = std::make_shared<pid::PIDControler>(&config->PID_posit_inner_config);
      auto positout = std::make_shared<pid::PIDControler>(&config->PID_posit_outer_config);
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<pid::PIDControler>>(motordef::kPositin, positin));
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<pid::PIDControler>>(motordef::kPositout, positout));
      break;
    }
    case motordef::kSpeedLoop: {
      auto speed = std::make_shared<pid::PIDControler>(&config->PID_speed_config);
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<pid::PIDControler>>(motordef::kSpeed, speed));
      break;
    }
    case motordef::kAngleLoop: {
      auto anglein = std::make_shared<pid::PIDControler>(&config->PID_angle_inner_config);
      auto angleout = std::make_shared<pid::PIDControler>(&config->PID_angle_outer_config);
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<pid::PIDControler>>(motordef::kAnglein, anglein));
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<pid::PIDControler>>(motordef::kAngleout, angleout));
      break;
    }
    case motordef::kCurrentLoop: {
      auto current = std::make_shared<pid::PIDControler>(&config->PID_current_config);
      controler_.PID_map_.insert(std::pair<uint8_t, std::shared_ptr<pid::PIDControler>>(motordef::kCurrent, current));
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
float motor::Motor::SpeedLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(motordef::kSpeed) == controler_.PID_map_.end())
    while (true)
      continue;
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[motordef::kSpeed]->GetInitFlag() == pid::kPIDEmpty)
    while (true)
      continue;

  // Get the target speed.
  float tar = controler_.tar_;
  // Get the current speed.
  float speed;
  if (external_info_.GetMsrFlagBool(motordef::kSpeed))
    speed = external_info_.GetMsrValue(motordef::kSpeed);
  else
    speed = GetSpeed();
  // Calculate the output value of the controler.
  float output = controler_.PID_map_[motordef::kSpeed]->SingleLoop(tar, speed);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(motordef::kSpeed))
    output += external_info_.GetFFdValue(motordef::kSpeed);

  return output;
}

/**
 * @brief Motor PID angle Loop
 * 
 * @return float 
 */
float motor::Motor::AngleLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(motordef::kAngleout) == controler_.PID_map_.end() || 
      controler_.PID_map_.find(motordef::kAnglein) == controler_.PID_map_.end()) {
    while (true)
      continue;
  }
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[motordef::kAngleout]->GetInitFlag() == pid::kPIDEmpty || 
      controler_.PID_map_[motordef::kAnglein]->GetInitFlag() == pid::kPIDEmpty) {
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

  if (external_info_.GetMsrFlagBool(motordef::kAngleout))
    angle = external_info_.GetMsrValue(motordef::kAngleout);
  else
    angle = GetAngle();
  if (external_info_.GetMsrFlagBool(motordef::kAnglein))
    speed = external_info_.GetMsrValue(motordef::kAnglein);
  else
    speed = GetSpeed();

  output = controler_.PID_map_[motordef::kAngleout]->SingleLoop(tar, angle, 8192);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(motordef::kAngleout))
    output += external_info_.GetFFdValue(motordef::kAngleout);

  output = controler_.PID_map_[motordef::kAnglein]->SingleLoop(output, speed);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(motordef::kAnglein))
    output += external_info_.GetFFdValue(motordef::kAnglein);
  return output;
}

/**
 * @brief Motor PID posit Loop
 * 
 * @return float 
 */
float motor::Motor::PositLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(motordef::kPositout) == controler_.PID_map_.end() || 
      controler_.PID_map_.find(motordef::kPositin) == controler_.PID_map_.end()) {
    while (true)
      continue;
  }
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[motordef::kPositout]->GetInitFlag() == pid::kPIDEmpty || 
      controler_.PID_map_[motordef::kPositin]->GetInitFlag() == pid::kPIDEmpty) {
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

  if (external_info_.GetMsrFlagBool(motordef::kPositout))
    posit = external_info_.GetMsrValue(motordef::kPositout);
  else
    posit = GetPosit();
  if (external_info_.GetMsrFlagBool(motordef::kPositin))
    speed = external_info_.GetMsrValue(motordef::kPositin);
  else
    speed = GetSpeed();

  output = controler_.PID_map_[motordef::kPositout]->SingleLoop(tar, posit);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(motordef::kPositout))
    output += external_info_.GetFFdValue(motordef::kPositout);

  output = controler_.PID_map_[motordef::kPositin]->SingleLoop(output, speed);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(motordef::kPositin))
    output += external_info_.GetFFdValue(motordef::kPositin);
  return output;
}

/**
 * @brief Motor PID current Loop
 * 
 * @return float 
 */
float motor::Motor::CurrentLoop(void) {
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_.find(motordef::kCurrent) == controler_.PID_map_.end())
    while (true)
      continue;
  // If the controler is not initialized, the program will be stuck here.
  if (controler_.PID_map_[motordef::kCurrent]->GetInitFlag() == pid::kPIDEmpty)
    while (true)
      continue;

  // Get the target current.
  float tar = controler_.tar_;
  // Get the current current.
  float current;
  // Calculate the output value of the controler.
  float output;

  if (external_info_.GetMsrFlagBool(motordef::kCurrent))
    current = external_info_.GetMsrValue(motordef::kCurrent);
  else
    current = GetCurrent();

  output = controler_.PID_map_[motordef::kCurrent]->SingleLoop(tar, current);
  // If the feed forward is enabled, add the feed forward value to the output.
  if (external_info_.GetFFdFlag(motordef::kCurrent))
    output += external_info_.GetFFdValue(motordef::kCurrent);

  return output;
}