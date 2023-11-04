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


chassis::Chassis chassis_test;
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
void Device_Work(void) {
	chassis_test.ControlTask();
	motor::DjiMotor::ControlTask();
//	imu_sensor.update(&imu_sensor);
}