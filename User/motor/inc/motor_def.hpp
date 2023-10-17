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
#include "driver_can.hpp"
#include "heart_beat.hpp"
#include "pid.hpp"

using namespace pid;

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
// 电机初始化枚举
typedef enum {
	kMotorEmpty = 0,
	kMotorInit,
} MotorInit;
//初始化枚举
typedef enum {
	kGroupEmpty = 0,
	kGroupOK,
} MotorGroupInit;
// pid 环路枚举 
typedef enum {
  kPIDClose,
  kCurrentLoop,
  kSpeedLoop,
  kAngleLoop,
  kPositLoop,
  kOtherLoop,
} PIDLoop;
// 电机状态枚举
typedef enum {
	kMotorOffline = 0,	
	kMotorOnline,
	kMotorTypeErr,
	kMotorIDErr,
	kMotorInitErr,	
	kMotorDataErr,
  kMotorStall,
  kMotorStop,
} MotorState;
// 电机驱动方式枚举
typedef enum {
	kMotorDriverCAN1,
	kMotorDriverCAN2,
} MotorDriver;
// 电机类型枚举
typedef enum {
	kGM6020 = 1,
	kRM3508,
	kRM2006,
  kLkMtr,
} MotorType;
// 电机状态信息类
class StateInfo {
public:
  MotorInit  		init_flag_;	
  MotorState 		work_state_;	
};
// 电机控制器类
class Control {
public:
  PIDControler current_;
  PIDControler speed_;
  PIDControler anglein_;
  PIDControler angleout_;
  PIDControler positin_;
  PIDControler positout_;
  PIDLoop loop_;
  float tar_;
  float out_;
};
// 电机外部数据类
class ExternalControl {
public:
  /* 前馈数据指针 */
  float* current_feedforward_;
  float* speed_feedforward_;
  float* angle_inner_feedforward_;
  float* angle_outer_feedforward_;
  float* posit_inner_feedforward_;
  float* posit_outer_feedforward_;
  /* 外部测量值 */
  float* current_measure_;
  float* speed_measure_;
  float* angle_inner_measure_;
  float* angle_outer_measure_;
  float* posit_inner_measure_;
  float* posit_outer_measure_;
  /* 前馈数据使能标志位 */
  MotorInit current_feedforward_flag_;
  MotorInit speed_feedforward_flag_;
  MotorInit angle_inner_feedforward_flag_;
  MotorInit angle_outer_feedforward_flag_;
  MotorInit posit_inner_feedforward_flag_;
  MotorInit posit_outer_feedforward_flag_;
  /* 外部测量值使能标志位 */
  MotorInit current_measure_flag;
  MotorInit speed_measure_flag;
  MotorInit angle_inner_measure_flag;
  MotorInit angle_outer_measure_flag;
  MotorInit posit_inner_measure_flag;
  MotorInit posit_outer_measure_flag;
};
// 电机初始化配置入口参数结构体
typedef struct MotorInitConfig_t {
  /* data */
  MotorType motor_type;
  CANInstanceConfig can_config;
  PIDInitConfig PID_current_config;
  PIDInitConfig PID_speed_config;
  PIDInitConfig PID_angle_inner_config;
  PIDInitConfig PID_angle_outer_config;
  PIDInitConfig PID_posit_inner_config;
  PIDInitConfig PID_posit_outer_config;
  ExternalControl* external_control_config;
  PIDLoop loop;
} MotorInitConfig;

}
#endif	/*MOTOR_DEF_HPP*/