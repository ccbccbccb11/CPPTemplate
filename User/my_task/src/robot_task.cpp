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
#include "remote_control.hpp"
#include "device.hpp"
#include "cmsis_os.h"

/**
  * @Name    StartControlTask
  * @brief   控制任务
  * @param   
**/
extern "C" void StartControlTask(void const * argument) {
  for(;;) {
    Device_Work();
		osDelay(1);
  }
}
/**
  * @Name    StartRealTimeTask
  * @brief   实时任务
  * @param   
**/
extern "C" void StartRealTimeTask(void const * argument) {
	for(;;) {
		rc.ControlTask();
    osDelay(1);
  }
}
/**
  * @Name    StartHeartBeatTask
  * @brief   心跳任务
  * @param   
**/
extern "C" void StartHeartBeatTask(void const * argument) {
  for(;;) {
    Device_HeartBeat();
    osDelay(1);
  }
}