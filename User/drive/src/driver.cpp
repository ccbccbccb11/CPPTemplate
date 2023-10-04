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
 
#include "driver.hpp"
#include "driver_io.hpp"
#include "driver_spi.hpp"
#include "driver_tim.hpp"
#include "driver_can.hpp"
#include "driver_uart.hpp"
#include "driver_haltick.hpp"

void Driver_Init(void) {
	CAN1_Init();
	CAN2_Init();
	SPI2_Init();
	USART1_Init();
	USART2_Init();
	USART3_Init();
	USART4_Init();
	USART6_Init();
	PwmInstance buzzer(htim11,TIM_CHANNEL_1);
}
