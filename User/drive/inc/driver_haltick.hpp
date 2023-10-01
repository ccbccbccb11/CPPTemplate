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
#ifndef DRIVER_HALTICK_H
#define DRIVER_HALTICK_H

#include "stm32f4xx_hal.h"

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/* c code */
uint32_t micros(void);
void delay_us(uint32_t us);
void delay_ms(uint32_t ms);
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
#ifdef __cplusplus
			/* c++ code */
#endif
#endif