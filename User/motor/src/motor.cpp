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
  CANInfoInit(config);  // divide into groups
	// External controller configuration
  // external_info_ = config->external_control_config;
	// Motor pid parameter initialization
  memset(&controler_, 0, sizeof(Control)); // Clear the pid parameter structure before initializing it
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
void Motor::PIDInit(PIDLoop loop, MotorInitConfig* config) {
  switch (loop) {
    case kPositLoop:
      controler_.positin_ = PIDControler(&config->PID_posit_inner_config);
      controler_.positout_ = PIDControler(&config->PID_posit_outer_config);
      break;
    case kSpeedLoop:
      controler_.speed_ = PIDControler(&config->PID_speed_config);
      break;
    case kAngleLoop:
      controler_.anglein_ = PIDControler(&config->PID_angle_inner_config);
      controler_.angleout_ = PIDControler(&config->PID_angle_outer_config);
      break;
    case kCurrentLoop:
      controler_.current_ = PIDControler(&config->PID_current_config);
      break;
    default:
      while (1)
        continue;
      break;
  }
}

/**
 * @brief Motor PID speed Loop
 * 
 * @return float 
 */
float Motor::SpeedLoop(void) {
  if (controler_.speed_.GetInitFlag() == kPIDEmpty)
    return 0.f;
  float tar = controler_.tar_;
  float speed;
  float output;

  if (external_info_.GetMsrFlag(kExSpeed))
    speed = external_info_.GetMsrValue(kExSpeed);
  else
    speed = GetSpeed();

  output = controler_.speed_.SingleLoop(tar, speed);

  if (external_info_.GetFFdFlag(kExSpeed))
    output += external_info_.GetFFdValue(kExSpeed);
  return output;
}

/**
 * @brief Motor PID angle Loop
 * 
 * @return float 
 */
float Motor::AngleLoop(void) {
  if (controler_.angleout_.GetInitFlag() == kPIDEmpty || controler_.anglein_.GetInitFlag() == kPIDEmpty)
    return 0.f;
  float tar = controler_.tar_;
  float angle;
  float speed;
  float output;

  if (external_info_.GetMsrFlag(kExAngleout))
    angle = external_info_.GetMsrValue(kExAngleout);
  else
    angle = GetAngle();
  if (external_info_.GetMsrFlag(kExAnglein))
    speed = external_info_.GetMsrValue(kExAnglein);
  else
    speed = GetSpeed();

  output = controler_.angleout_.SingleLoop(tar, angle, 8192);

  if (external_info_.GetFFdFlag(kExAngleout))
    output += external_info_.GetFFdValue(kExAngleout);

  output = controler_.anglein_.SingleLoop(output, speed);

  if (external_info_.GetFFdFlag(kExAnglein))
    output += external_info_.GetFFdValue(kExAnglein);
  return output;
}

/**
 * @brief Motor PID posit Loop
 * 
 * @return float 
 */
float Motor::PositLoop(void) {
  if (controler_.positout_.GetInitFlag() == kPIDEmpty || controler_.positin_.GetInitFlag() == kPIDEmpty)
    return 0.f;
  float tar = controler_.tar_;
  float posit;
  float speed;
  float output;

  if (external_info_.GetMsrFlag(kExPositout))
    posit = external_info_.GetMsrValue(kExPositout);
  else
    posit = GetPosit();
  if (external_info_.GetMsrFlag(kExPositin))
    speed = external_info_.GetMsrValue(kExPositin);
  else
    speed = GetSpeed();

  output = controler_.positout_.SingleLoop(tar, posit);

  if (external_info_.GetFFdFlag(kExPositout))
    output += external_info_.GetFFdValue(kExPositout);

  output = controler_.positin_.SingleLoop(output, speed);

  if (external_info_.GetFFdFlag(kExPositin))
    output += external_info_.GetFFdValue(kExPositin);
  return output;
}

/**
 * @brief Motor PID current Loop
 * 
 * @return float 
 */
float Motor::CurrentLoop(void) {
  if (controler_.current_.GetInitFlag() == kPIDEmpty)
    return 0.f;
  float tar = controler_.tar_;
  float current;
  float output;

  if (external_info_.GetMsrFlag(kExCurrent))
    current = external_info_.GetMsrValue(kExCurrent);
  else
    current = GetCurrent();

  output = controler_.current_.SingleLoop(tar, current);
  
  if (external_info_.GetFFdFlag(kExCurrent))
    output += external_info_.GetFFdValue(kExCurrent);
  return output;
}