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
   * @brief LkMotor类初始化函数，Lk电机初始化时调用
   * 
   */
void Motor::MotorInit(MotorInitConfig* config) {
  motor_type_ = config->motor_type; // 电机类型
  CANInfoInit(config);  // 分组
	//外部控制器配置
  external_control_ = config->external_control_config;
	// 电机 pid 参数初始化
  memset(&controler_, 0, sizeof(Control)); // 初始化pid参数结构体前先清空
  controler_.loop_ = config->loop;
  PIDInit(controler_.loop_, config);
}