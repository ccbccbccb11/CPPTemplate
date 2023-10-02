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
#include "test_motor.hpp"

uint8_t Device::motors_count_ = 0;
Device devices;

void Device_Init(void) {
	devices.AddMotors(&test_motor);
}

void Device_HeartBeat(void) {
	
}

void Device_Work(void) {
	
}