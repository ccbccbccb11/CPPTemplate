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
float posit_in_P1 = 0.2;//0.6 0 1
float posit_in_I1 = 0;
float posit_out_P1 = 0.1;
float posit_in_P2 = 0.5;
float posit_in_I2 = 0;
float posit_out_P2 = 0.1;
float posit_in_P3 = 0.5;
float posit_in_I3 = 0;
float posit_out_P3 = 0.1;
Matrixf<6,1> target_angle;
Matrixf<3,1> target_p((float[3]){0.039,0,0.192});
Matrixf<3,1> rpy((float[3]){0.01,0.01,0.01});
Matrixf<3, 3> R;
Matrixf<4,4> Td;
Matrixf<6,1> joint_angle;
uint8_t joint = 0;
void Device_Work(void) {

	robot_test.ControlTask();
  robot_test.manipulator_->SetMotor1PID(posit_in_P1, posit_in_I1, 0, posit_out_P1, 0, 0);
  robot_test.manipulator_->SetMotor2PID(posit_in_P2, posit_in_I2, 0, posit_out_P2, 0, 0);
  robot_test.manipulator_->SetMotor3PID(posit_in_P3, posit_in_I3, 0, posit_out_P3, 0, 0);

	R = robotics::rpy2r(rpy);
  Td = robotics::rp2t(R,target_p);
	joint_angle = manipulator_test.Kinematics(Td);
	joint_angle *= 57.3f;
  if (joint) {
    robot_test.manipulator_->SetJointSpaceTarAngle(joint_angle);
	} else {
    robot_test.manipulator_->SetMotorsTargetAngle(target_angle);
	}
//	chassis_test.ControlTask();
	motor::DjiMotor::ControlTask();
	motor::LkMotor::ControlTask();
//	imu_sensor.update(&imu_sensor);
  // manipulator_test.Dynamics();
}