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
 
#include "device.hpp"
#include "imu_sensor.h"
#include "dji_motor.hpp"
#include "lk_motor.hpp"
#include "chassis_motor.hpp"
#include "robot.hpp"

//robot::Robot robot_test;
motor::LkMotor lk_motor_test1, lk_motor_test2, lk_motor_test3, lk_motor_test4;
float tar;
/**
 * @brief 设备初始化
 * 
 */
void Device_Init(void) {
//	imu_sensor.init(&imu_sensor);
  motordef::MotorInitConfig motor_init_config = {
    .motor_type = motordef::kLkMtr,
    .can_config = {
      .can_handle = &hcan1,
    },
    .PID_speed_config = {
      .kp = 0.1,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 1000,
    },
    .loop = motordef::kSpeedLoop,
  };
  motor_init_config.can_config.rx_id = 0x141;
  lk_motor_test1.LkMotorInit(&motor_init_config);
  motor_init_config.can_config.rx_id = 0x142;
  lk_motor_test2.LkMotorInit(&motor_init_config);
  motor_init_config.can_config.rx_id = 0x143;
  lk_motor_test3.LkMotorInit(&motor_init_config);
  motor_init_config.can_config.rx_id = 0x144;
  lk_motor_test4.LkMotorInit(&motor_init_config);
}
/**
 * @brief 设备心跳
 * 
 */
void Device_HeartBeat(void) {
	heartbeat::HeartBeat::TickTask();
}
/**
 * @brief 设备工作
 * 
 */
void Device_Work(void) {
//	robot_test.ControlTask();
//	chassis_test.ControlTask();
  lk_motor_test1.SetPIDTarget(tar);
  lk_motor_test2.SetPIDTarget(tar);
  lk_motor_test3.SetPIDTarget(tar);
  lk_motor_test4.SetPIDTarget(tar);
	motor::DjiMotor::ControlTask();
	motor::LkMotor::ControlTask();
//	imu_sensor.update(&imu_sensor);
}