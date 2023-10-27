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
  external_control_ = config->external_control_config;
	// Motor pid parameter initialization
  memset(&controler_, 0, sizeof(Control)); // Clear the pid parameter structure before initializing it
  controler_.loop_ = config->loop;
  PIDInit(controler_.loop_, config);
}