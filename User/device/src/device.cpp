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

using namespace djimtr;
Device devices;
DjiMotor M6020_test;
DjiMotor* M6020_test_;
void Device_Init(void) {
//	imu_sensor.init(&imu_sensor);
  MotorInitConfig GM6020_test_config;
	GM6020_test_config.can_config.can_handle = &hcan1;
	GM6020_test_config.can_config.rx_id = 0x206;
  GM6020_test_config.loop = kSpeedLoop;
  GM6020_test_config.motor_type = kGM6020;
  GM6020_test_config.PID_speed_config.kp = 1;
  GM6020_test_config.PID_speed_config.ki = 1;
  GM6020_test_config.PID_speed_config.kd = 1;
  GM6020_test_config.PID_speed_config.integral_max = 1;
  GM6020_test_config.PID_speed_config.iout_max = 1;
  GM6020_test_config.PID_speed_config.blind_err = 1;
  GM6020_test_config.PID_speed_config.out_max = 1;
  M6020_test = DjiMotor(&GM6020_test_config);
//	djimtr_instance[DjiMotor::djimtr_ins_cnt_++] = &M6020_test;
//	M6020_test_ = &M6020_test;

}

void Device_HeartBeat(void) {
	// Gimbal_HeartBeat();
}

void Device_Work(void) {
//	imu_sensor.update(&imu_sensor);
	// Gimbal_ControlTask();
}