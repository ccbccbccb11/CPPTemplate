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
#include "driver_haltick.hpp"
#include "remote_control.hpp"

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
uint8_t joint = 0;
uint8_t key = 0;

Matrixf<3, 3> R;
Matrixf<4,4> Td;
Matrixf<6,1> joint_angle;
Matrixf<6,1> target_angle((float[6]){0,130,-40,0,0,0});
Matrixf<3,1> target_p((float[3]){0.2,0,0});
Matrixf<3,1> rpy((float[3]){0.01,0.01,0.01});
void Device_HeartBeat(void) {
	heartbeat::HeartBeat::TickTask();
  R = robotics::rpy2r(rpy);
	target_p[0][0] += rc.base_info_->ch3/(660000.0f);
	target_p[0][1] += rc.base_info_->ch2/(660000.0f);
	target_p[0][2] += -rc.base_info_->ch1/(660000.0f);

  
    float norm__ = target_p.norm();
    if (norm__ < 0.2) {
      target_p[0][0] *= 0.2f/norm__;
      target_p[0][1] *= 0.2f/norm__;
      target_p[0][2] *= 0.2f/norm__;
    }
    if (norm__ > 0.4) {
      target_p[0][0] *= 0.4f/norm__;
      target_p[0][1] *= 0.4f/norm__;
      target_p[0][2] *= 0.4f/norm__;
    } 
    if (target_p[0][0] < 0.2) {
      target_p[0][0] = 0.2;
    }
    if (target_p[0][0] > 0.36) {
      target_p[0][0] = 0.36;
    }
    if (abs(target_p[0][1]) > 0.15) {
      if (target_p[0][1] > 0)
        target_p[0][1] = 0.15;
      else
        target_p[0][1] = -0.15;
    }
    if (target_p[0][2] < 0) {
      target_p[0][2] = 0;
    }
    if (target_p[0][2] > 0.3) {
      target_p[0][2] = 0.3;
    }
    
  Td = robotics::rp2t(R, target_p);
	
	joint = 0;
  uint32_t start = micros();
//  joint_angle = manipulator_test.Kinematics(Td);
	manipulator_test.Dynamics();
  uint32_t end = micros();
  joint_angle *= 57.3f;
	if(rc.base_info_->s1.value == 2 && rc.base_info_->s2.value == 2)
		joint = 1;

  uint32_t err = end - start;
}
/**
 * @brief 设备工作
 * 
 */
void Device_Work(void) {
 robot_test.ControlTask();

	if (rc.state_info_->status == kRCOnline) {
    robot_test.manipulator_->MotorsRestart();
    if (joint) {
      target_angle = joint_angle;
    }
    if(rc.base_info_->s1.value == 1 && rc.base_info_->s2.value == 1) {
      target_angle[0][1] = 130;
      target_angle[0][2] = -40;
    }
    robot_test.manipulator_->SetJointSpaceTarAngle(target_angle);
	}
  else {
    robot_test.manipulator_->MotorsStop();
    target_angle[0][1] = 130;
    target_angle[0][2] = -40;
    // target_p[0][0] = 0.2;
    // target_p[0][1] = 0;
    // target_p[0][2] = 0;
  }
//	chassis_test.ControlTask();
		motor::DjiMotor::ControlTask();
		motor::LkMotor::ControlTask();

//	imu_sensor.update(&imu_sensor);
  // manipulator_test.Dynamics();
}