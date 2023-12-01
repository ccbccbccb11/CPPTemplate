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
#include "manipulator.hpp"

robot::Robot robot_test;
robot::Manipulator manipulator_test;
/**
 * @brief 设备初始化
 * 
 */
void Device_Init(void) {
//	imu_sensor.init(&imu_sensor);
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
float posit_in_P1 = 0;//0.6 0 1
float posit_in_I1 = 0;
float posit_out_P1 = 0;
float posit_in_P2 = 0;
float posit_in_I2 = 0;
float posit_out_P2 = 0;
float posit_in_P3 = 0;
float posit_in_I3 = 0;
float posit_out_P3 = 0;
Matrixf<6,1> target_angle;
void Device_Work(void) {
	robot_test.ControlTask();
  robot_test.manipulator_->SetJoint1PID(posit_in_P1, posit_in_I1, 0, posit_out_P1, 0, 0);
  robot_test.manipulator_->SetJoint2PID(posit_in_P2, posit_in_I2, 0, posit_out_P2, 0, 0);
  robot_test.manipulator_->SetJoint3PID(posit_in_P3, posit_in_I3, 0, posit_out_P3, 0, 0);
  robot_test.manipulator_->SetMotorsTargetAngle(target_angle);
//	chassis_test.ControlTask();
	// motor::DjiMotor::ControlTask();
	// motor::LkMotor::ControlTask();
	// manipulator_test.Kinematics();
//	imu_sensor.update(&imu_sensor);
  // manipulator_test.Dynamics();
}