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
#include "chassis.hpp"

using namespace djimtr;
using namespace lkmtr;

// chassis::Chassis chassis_test;

MotorInitConfig GM6020_test_config = {
  .motor_type = kGM6020,
	.can_config = {
		.can_handle = &hcan1,
		.rx_id = 0x206,
	},
	// .PID_speed_config = {
  //   .kp = 1,
  //   .ki = 0,
  //   .kd = 0,
  //   .blind_err = 0 ,
  //   .integral_max = 2000,
  //   .iout_max = 20000,
  //   .out_max = 20000,
	// },
	// .PID_angle_inner_config = {
  //   .kp = 1,
  //   .ki = 1,
  //   .kd = 0,
  //   .blind_err = 0 ,
  //   .integral_max = 10000,
  //   .iout_max = 10000,
  //   .out_max = 20000,
	// },
	// .PID_angle_outer_config = {
  //   .kp = 1,
  //   .ki = 0,
  //   .kd = 0,
  //   .blind_err = 0 ,
  //   .integral_max = 100,
  //   .iout_max = 100,
  //   .out_max = 200,
	// },
	.PID_posit_inner_config = {
    .kp = 1,
    .ki = 1,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 10000,
    .iout_max = 10000,
    .out_max = 20000,
	},
	.PID_posit_outer_config = {
    .kp = 1,
    .ki = 0,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 100,
    .iout_max = 100,
    .out_max = 200,
	},
  .loop = kPositLoop,
};

MotorInitConfig RM3508_test_config = {
  .motor_type = kRM3508,
	.can_config = {
		.can_handle = &hcan1,
		.rx_id = 0x201,
	},
	.PID_speed_config = {
    .kp = 10,
    .ki = 0.1,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 100000,
    .iout_max = 10000,
    .out_max = 10000,
	},
  .loop = kSpeedLoop,
};
DjiMotor M3508_test;
DjiMotor M6020_test;
size_t rm3508classzize;
size_t aaaaaaaaapidsize;
// MotorInitConfig LK8010_test_config = {
//   .motor_type = kLkMtr,
// 	.can_config = {
// 		.can_handle = &hcan1,
// 		.rx_id = 0x141,
// 	},
// 	.PID_speed_config = {
//     .kp = 0,
//     .ki = 0,
//     .kd = 0,
//     .blind_err = 0 ,
//     .integral_max = 0,
//     .iout_max = 0,
//     .out_max = 1000,
// 	},
//   .loop = kSpeedLoop,
// };
// LkMotor LK8010_test = LkMotor(&LK8010_test_config);
/**
 * @brief 设备初始化
 * 
 */
void Device_Init(void) {
  M3508_test.DjiMotorInit(&RM3508_test_config);
  M6020_test.DjiMotorInit(&GM6020_test_config);
//	imu_sensor.init(&imu_sensor);
}
/**
 * @brief 设备心跳
 * 
 */
void Device_HeartBeat(void) {
	rm3508classzize = sizeof(M3508_test);
	aaaaaaaaapidsize = sizeof(M3508_test.controler_);
	HeartBeat::TickTask();
}
/**
 * @brief 设备工作
 * 
 */
void Device_Work(void) {
	DjiMotor::ControlTask();
//	imu_sensor.update(&imu_sensor);
}