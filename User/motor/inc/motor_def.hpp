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

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/*C code*/
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
	

#ifdef __cplusplus
			/*C++ code*/
namespace motor {
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
typedef enum {
	kMotorOffline = 0,	
	kMotorOnline,
	kMotorTypeErr,
	kMotorIDErr,
	kMotorInitErr,	
	kMotorDataErr,
} MotorState;//���״̬��ʧ��Ϊ������ȼ�

typedef enum {
	kMotorEmpty = 0,
	kMotorInit,
} MotorInit;//��ʼ��ö��

typedef enum {
	kMotorDriverCAN1,
	kMotorDriverCAN2,
} MotorDriver;//�������ͨ�ŷ�ʽ

typedef enum {
	kGM6020 = 1,
	kRM3508,
	kRM2006,
} MotorType;//�������

class RxInfo {
	public:
			/*���Ķ�ȡ*/
		uint16_t	angle_;					//0~8191 	//ת�ӱ���
		int16_t 	speed_;					//RPM    	//ת��ת��
		int16_t 	current_;				//mA			//�������
		uint8_t		temperature_;		//��C    	//����¶�
		int16_t 	torque_;					//N��m			//ת��ת��
			/*�û�����*/
		uint16_t	angle_prev_;	
		int16_t		angle_offset_;		//ƫִ
		int32_t		angle_sum_;			//+-(2^31-1) �ϵ翪ʼ�����ڵĽǶȺ�
};

class TxInfo {
	public:
		int16_t		motor_out_;
};

class PIDInfo {
	public:
		float		tagert_speed_;
		float		tagert_angle_;
		float		tagert_posit_;
};

class IDInfo {
	public:
		uint32_t 		tx_id_;   //����id
		uint32_t 		rx_id_;   //����id
		uint32_t 		buff_p_;  //����/���� ����λ��
		
		MotorDriver drive_type_; //	��������
		MotorType  	motor_type_; //	�������
};

class StateInfo {
	public:
		MotorInit  		init_flag_;	
		uint8_t       offline_cnt_max_;
		uint8_t       offline_cnt_;
		MotorState 		work_state_;	
};
}
#endif  /* __cplusplus */
#endif	/*MOTOR_DEF_HPP*/