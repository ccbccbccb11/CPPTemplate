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
 
#include "stm32f4xx_hal.h"
#include "can_protocol.hpp"
#include "device.hpp"
#include "cmsis_os.h"

/**
  * @Name    StartControlTask
  * @brief   ��������
  * @param   
**/
extern "C" void StartControlTask(void const * argument) {
  for(;;) {
    Device_Work();
		CAN_Send();
		osDelay(1);
  }
}

/**
  * @Name    StartRealTimeTask
  * @brief   ʵʱ�������
  * @param   
**/
extern "C" void StartRealTimeTask(void const * argument) {
	for(;;) {
    osDelay(1);
  }
}

/**
  * @Name    StartHeartBeatTask
  * @brief   �������
  * @param   
**/
extern "C" void StartHeartBeatTask(void const * argument) {
  for(;;) {
    Device_HeartBeat();
    osDelay(1);
  }
}