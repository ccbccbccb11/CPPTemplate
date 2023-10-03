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
 
#ifndef CAN_PROTOCOL_HPP
#define CAN_PROTOCOL_HPP

#include "stm32f4xx_hal.h"
 
#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/*C code*/
uint8_t CAN_Send(void);
/*CAN发送或是接收的ID*/
typedef enum
{
	kCANId_0x200 = 0x200,		
	kCANId_0x1ff = 0x1FF,	
	kCANId_0x280 = 0x280,
} CANId;
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
#ifdef __cplusplus
			/*C++ code*/
#endif /*__cplusplus*/
#endif /*CAN_PROTOCOL_HPP*/