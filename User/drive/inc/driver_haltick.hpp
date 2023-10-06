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

uint32_t micros(void);
void delay_us(uint32_t us);
void delay_ms(uint32_t ms);

#endif