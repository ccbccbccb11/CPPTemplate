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
 
 #include "test_motor.hpp"
 
 using namespace motor;
 using namespace pid;
 
Motor test_motor(kMotorDriverCAN1, kGM6020, 0x206);
PIDControler test_speed_pid;
float test_pid_buff[7] = {0.1, 0.01, 0.05, 0.01, 1.0, 0.5, 10.0};
PIDConfid config;


void Test_PIDInit(void) { 
	test_speed_pid.InitMotorPIDParams(0.1, 0.01, 0.05, 0.01, 1.0, 0.5, 10.0, kSpeed);
	test_speed_pid.InitMotorPIDParams(test_pid_buff, kSpeed);         
	
	config.kp_ = 0.1;
	config.ki_ = 0.1;
	config.kd_ = 0.1;
	config.blind_err_ = 0.1;
	config.integral_max_ = 0.1;
	config.iout_max_ = 0.1;
	config.out_max_ = 0.1;
	test_speed_pid.InitMotorPIDParams(config, kSpeed);
}