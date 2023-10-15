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
//��ʼ��ö��
typedef enum {
	kMotorEmpty = 0,
	kMotorInit,
} MotorInit;
// pid ���ƻ�·ѡȡ
typedef enum {
  kPIDClose,
  kCurrentLoop,
  kSpeedLoop,
  kAngleLoop,
  kPositLoop,
  kOtherLoop,
} PIDLoop;
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
  MotorState 		work_state_;	
};
//������
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
//ǰ��ͨ���Լ��ⲿ����ֵ��������ǵĶ�Ӧ��־λ
class ExternalControl {
public:
  /* ǰ��ͨ�� */
  float* current_feedforward_;
  float* speed_feedforward_;
  float* angle_inner_feedforward_;
  float* angle_outer_feedforward_;
  float* posit_inner_feedforward_;
  float* posit_outer_feedforward_;
  /* �ı����ֵͨ�� */
  float* current_measure_;
  float* speed_measure_;
  float* angle_inner_measure_;
  float* angle_outer_measure_;
  float* posit_inner_measure_;
  float* posit_outer_measure_;
  /* ǰ��ͨ��ʹ�ܱ�־λ */
  MotorInit current_feedforward_flag_;
  MotorInit speed_feedforward_flag_;
  MotorInit angle_inner_feedforward_flag_;
  MotorInit angle_outer_feedforward_flag_;
  MotorInit posit_inner_feedforward_flag_;
  MotorInit posit_outer_feedforward_flag_;
  /* �ı����ֵͨ��ʹ�ܱ�־λ */
  MotorInit current_measure_flag;
  MotorInit speed_measure_flag;
  MotorInit angle_inner_measure_flag;
  MotorInit angle_outer_measure_flag;
  MotorInit posit_inner_measure_flag;
  MotorInit posit_outer_measure_flag;
};
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