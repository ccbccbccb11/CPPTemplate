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
#include "cmsis_os.h"

/**
  * @Name    StartControlTask
  * @brief   ��������
  * @param   
**/
void StartControlTask(void const * argument)
{
  for(;;)
  {
		static int aad = 0;
		osDelay(1);
  }
}

/**
  * @Name    StartRealTimeTask
  * @brief   ʵʱ�������
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
  * @brief   �������
  * @param   
**/
void StartHeartBeatTask(void const * argument)
{
  for(;;)
  {
    osDelay(1);
  }
}