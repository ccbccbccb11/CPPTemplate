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
// Motor initialization enum
typedef enum {
	kMotorEmpty = 0,
	kMotorInit,
} MotorInit;

// Initialization enum
typedef enum {
	kGroupEmpty = 0,
	kGroupOK,
} MotorGroupInit;

// dji motor grouping information
typedef enum {
	kCAN1_0x1FF = 0,
	kCAN1_0x200 = 1,
	kCAN1_0x2FF = 2,
	kCAN2_0x1FF = 3,
	kCAN2_0x200 = 4,
	kCAN2_0x2FF = 5,
  kGroupSum = 6,
} MtrGroup;

// pid loop enum
typedef enum {
  kPIDClose,
  kCurrentLoop,
  kSpeedLoop,
  kAngleLoop,
  kPositLoop,
  kOuterLoop,
} PIDLoop;

// Motor state enum
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

// enum of motor drive modes
typedef enum {
	kMotorDriverCAN1,
	kMotorDriverCAN2,
} MotorDriver;

// Motor type enum
typedef enum {
	kGM6020 = 1,
	kRM3508,
	kRM2006,
  kLkMtr,
} MotorType;

// Motor status information class
class StateInfo {
public:
  MotorInit  		init_flag_;	
  MotorState 		work_state_;	
};

// Motor controller class
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
  float dct_out_;
  float out_;
};

// Motor external controller class
class ExternalControl {
public:
  /* Feed forward data pointer */
  float* current_feedforward_;
  float* speed_feedforward_;
  float* angle_inner_feedforward_;
  float* angle_outer_feedforward_;
  float* posit_inner_feedforward_;
  float* posit_outer_feedforward_;
  /* External measurement */
  float* current_measure_;
  float* speed_measure_;
  float* angle_inner_measure_;
  float* angle_outer_measure_;
  float* posit_inner_measure_;
  float* posit_outer_measure_;
  /* Feedforward data enable flag bit */
  MotorInit current_feedforward_flag_;
  MotorInit speed_feedforward_flag_;
  MotorInit angle_inner_feedforward_flag_;
  MotorInit angle_outer_feedforward_flag_;
  MotorInit posit_inner_feedforward_flag_;
  MotorInit posit_outer_feedforward_flag_;
  /* External measurement enabled flag */
  MotorInit current_measure_flag;
  MotorInit speed_measure_flag;
  MotorInit angle_inner_measure_flag;
  MotorInit angle_outer_measure_flag;
  MotorInit posit_inner_measure_flag;
  MotorInit posit_outer_measure_flag;
};
// The input parameter structure is configured for motor initialization
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
#endif	/* MOTOR_DEF_HPP */