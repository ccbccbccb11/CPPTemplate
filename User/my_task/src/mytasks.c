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
  * @brief   控制任务
  * @param   
**/
void StartControlTask(void const * argument)
{
  for(;;)
  {
    Device_Work();
		CAN_Send();
		osDelay(1);
  }
}

/**
  * @Name    StartRealTimeTask
  * @brief   实时任务更新
  * @param   
**/
void StartRealTimeTask(void const * argument)
{
	for(;;)
  {
    osDelay(1);
  }
}

/**
  * @Name    StartHeartBeatTask
  * @brief   监控任务
  * @param   
**/
void StartHeartBeatTask(void const * argument)
{
  for(;;)
  {
    Device_HeartBeat();
    osDelay(1);
  }
}