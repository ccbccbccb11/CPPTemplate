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
#include "example.hpp"

uint8_t Device::motors_count_ = 0;
Device devices;

void Device_Init(void) {
	devices.AddMotors(&test_motor);
	test_pid.InitMotorPIDParams(1,0,0,0,0,0,1000,pid::kPositOut); 
	test_pid.InitMotorPIDParams(2,0,0,0,0,0,2000,pid::kPositIn); 
}

void Device_HeartBeat(void) {
	Gimbal_HeartBeat();
}

void Device_Work(void) {
	Gimbal_ControlTask();
}