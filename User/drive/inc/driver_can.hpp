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
 
#ifndef DRIVER_CAN_HPP
#define DRIVER_CAN_HPP

#include "stm32f4xx_hal.h"

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
extern CAN_TxHeaderTypeDef CAN_TxHeadeType;
extern CAN_RxHeaderTypeDef CAN_RxHeadeType;

void CAN1_Init(void); //CAN1初始化
void CAN2_Init(void); //CAN2初始化
void HAL_CAN_TxHeadeInit(uint16_t ID);//配置CAN发送帧头
void CAN_FilterParamsInit(CAN_FilterTypeDef *sFilterConfig); //配置CAN标识符滤波器
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
#endif