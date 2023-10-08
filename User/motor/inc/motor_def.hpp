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
//��ʼ��ö��
typedef enum {
	kMotorEmpty = 0,
	kMotorInit,
} MotorInit;
//���״̬��ʧ��Ϊ������ȼ�
typedef enum {
	kMotorOffline = 0,	
	kMotorOnline,
	kMotorTypeErr,
	kMotorIDErr,
	kMotorInitErr,	
	kMotorDataErr,
} MotorState;
//�������ͨ�ŷ�ʽ
typedef enum {
	kMotorDriverCAN1,
	kMotorDriverCAN2,
} MotorDriver;
//�������
typedef enum {
	kGM6020 = 1,
	kRM3508,
	kRM2006,
} MotorType;
//״̬��Ϣ
class StateInfo {
	public:
		MotorInit  		init_flag_;	
		uint8_t       offline_cnt_max_;
		uint8_t       offline_cnt_;
		MotorState 		work_state_;	
};
//������
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