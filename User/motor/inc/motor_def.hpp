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
} MotorState;//电机状态，失联为最高优先级

typedef enum {
	kMotorEmpty = 0,
	kMotorInit,
} MotorInit;//初始化枚举

typedef enum {
	kMotorDriverCAN1,
	kMotorDriverCAN2,
} MotorDriver;//电机驱动通信方式

typedef enum {
	kGM6020 = 1,
	kRM3508,
	kRM2006,
} MotorType;//电机类型

class RxInfo {
	public:
			/*报文读取*/
		uint16_t	angle_;					//0~8191 	//转子编码
		int16_t 	speed_;					//RPM    	//转子转速
		int16_t 	current_;				//mA			//电机电流
		uint8_t		temperature_;		//°C    	//电机温度
		int16_t 	torque_;					//N·m			//转轴转矩
			/*用户计算*/
		uint16_t	angle_prev_;	
		int16_t		angle_offset_;		//偏执
		int32_t		angle_sum_;			//+-(2^31-1) 上电开始到现在的角度和
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
		uint32_t 		tx_id_;   //发送id
		uint32_t 		rx_id_;   //接收id
		uint32_t 		buff_p_;  //发送/接收 数组位置
		
		MotorDriver drive_type_; //	驱动类型
		MotorType  	motor_type_; //	电机类型
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