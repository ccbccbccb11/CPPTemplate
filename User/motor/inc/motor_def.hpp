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
 
#ifndef MOTOR_DEF_HPP
#define MOTOR_DEF_HPP

#include "stm32f4xx_hal.h"
#include "pid.hpp"

namespace motordef {
/**
 ******************************************************************************
 * @note    
	//RM2006 & RM3508:
							 RMotorF_ID 0x200
							 RMotorB_ID 0x1FF
	//GM6020:
							 GMotorF_ID 0x1FF
							 GMotorB_ID 0x2FF
 ******************************************************************************
 */
//初始化枚举
typedef enum {
	kMotorEmpty = 0,
	kMotorInit,
} MotorInit;
//电机状态，失联为最高优先级
typedef enum {
	kMotorOffline = 0,	
	kMotorOnline,
	kMotorTypeErr,
	kMotorIDErr,
	kMotorInitErr,	
	kMotorDataErr,
} MotorState;
//电机驱动通信方式
typedef enum {
	kMotorDriverCAN1,
	kMotorDriverCAN2,
} MotorDriver;
//电机类型
typedef enum {
	kGM6020 = 1,
	kRM3508,
	kRM2006,
} MotorType;
//状态信息
class StateInfo {
	public:
		MotorInit  		init_flag_;	
		uint8_t       offline_cnt_max_;
		uint8_t       offline_cnt_;
		MotorState 		work_state_;	
};
//控制器
class Control {
	public:
    pid::PIDControler speed_PID_;
    pid::PIDControler angle_PID_;
    pid::PIDControler posit_PID_;
    float motor_out;
};
typedef struct MotorCANConfig_t {
  /* data */
  MotorType motor_type;
  CANInstanceConfig can_config;
} MotorCANConfig;

}
#endif	/*MOTOR_DEF_HPP*/