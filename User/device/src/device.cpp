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

using namespace djimtr;
using namespace lkmtr;
/**
 * @note 不能创建全局对象时先调用默认构造函数，然后再在函数内
 *       调用重载构造函数并把this指针传出!!!!
 *       因为此时传出的this指针只是在堆上分配的临时变量，
 *       构造完后单纯把值拷贝给全局变量，函数执行完便销毁了。
 *       所以用了这种方法的话全局对象名与函数内临时的this不是一个东西
 *       
 */
MotorInitConfig GM6020_test_config = {
  .motor_type = kGM6020,
	.can_config = {
		.can_handle = &hcan1,
		.rx_id = 0x206,
	},
	.PID_speed_config = {
    .kp = 0,
    .ki = 10,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 2000,
    .iout_max = 20000,
    .out_max = 20000,
	},
  .loop = kSpeedLoop,
};
DjiMotor M6020_test = DjiMotor(&GM6020_test_config);
MotorInitConfig LK8010_test_config = {
  .motor_type = kLkMtr,
	.can_config = {
		.can_handle = &hcan1,
		.rx_id = 0x141,
	},
	.PID_speed_config = {
    .kp = 0,
    .ki = 0,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 0,
    .iout_max = 0,
    .out_max = 1000,
	},
  .loop = kSpeedLoop,
};
LkMotor LK8010_test = LkMotor(&LK8010_test_config);
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