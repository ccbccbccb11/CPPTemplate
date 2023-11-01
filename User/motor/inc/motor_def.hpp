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
#include <map>

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
} PIDCtrlMode;

// pid ex enum
typedef enum {
  kCurrent,
  kSpeed,
  kAnglein,
  kAngleout,
  kPositin,
  kPositout,
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
  Control() {}
  std::map<uint8_t, std::shared_ptr<pid::PIDControler>> PID_map_;
  PIDCtrlMode loop_;
  float tar_;
  float dct_out_;
  float out_;
};

// Motor external controller class
class ExternalInfo {
private:
  /* Key of feedforward data pointer map */
  PIDLoop feedforward_;
  /* Key of external measure map */
  PIDLoop measure_;
  /* Feedforward data pointer map */
  std::map<PIDLoop, float*> ffd_map_;
  /* External measure map */
  std::map<PIDLoop, float*> msr_map_;

public:
  /* Set feedforard data ptr and enable ffd control */
  void SetFeedforward(PIDLoop flag, float* data_ptr) { ffd_map_.insert(std::pair<PIDLoop, float*>(flag, data_ptr)); }
  
  /* Set external measure data ptr and enable ffd control */
  void SetExtlMeasure(PIDLoop flag, float* data_ptr) { msr_map_.insert(std::pair<PIDLoop, float*>(flag, data_ptr)); }
  
  /* Return feedforard data ptr and enable ffd control */
  bool GetFFdFlag(PIDLoop flag) { return ffd_map_.find(flag) != ffd_map_.end(); }
  
  /* Return external measure data ptr and enable ffd control */
  bool GetMsrFlagBool(PIDLoop flag) { return msr_map_.find(flag) != msr_map_.end(); }
  
  /* Return feedforard data ptr and enable ffd control */
  float GetFFdValue(PIDLoop flag) { return *ffd_map_[flag]; }
  
  /* Return external measure data ptr and enable ffd control */
  float GetMsrValue(PIDLoop flag) { return *msr_map_[flag]; }
};

// The input parameter structure is configured for motor initialization
typedef struct MotorInitConfig_t {
  /* data */
  MotorType motor_type;
  CANInstanceConfig can_config;
  pid::PIDInitConfig PID_current_config;
  pid::PIDInitConfig PID_speed_config;
  pid::PIDInitConfig PID_angle_inner_config;
  pid::PIDInitConfig PID_angle_outer_config;
  pid::PIDInitConfig PID_posit_inner_config;
  pid::PIDInitConfig PID_posit_outer_config;
  PIDCtrlMode loop;
} MotorInitConfig;

}
#endif	/* MOTOR_DEF_HPP */