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
 
 #ifndef DEVICE_HPP
 #define DEVICE_HPP

#include "stm32f4xx_hal.h"

#include <iostream>
#include <vector>
#include "pid.hpp"
#include "uart_protocol.hpp"

class Device {
	public:
		Device() {}
	private:
};

void Device_Init(void);
void Device_HeartBeat(void);
void Device_Work(void);
#endif /*DEVICE_HPP*/























