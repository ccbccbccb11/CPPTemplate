/**
 ******************************************************************************
 * @file    .cpp/h
 * @brief   
 * @author  
 * @note    finish 
 ******************************************************************************
 * Copyright (c) 2024 Team RobotPilots-SZU
 * All rights reserved.
 ******************************************************************************
 */

#include "driver_spi.hpp"

extern SPI_HandleTypeDef hspi2;
void SPI2_Init(void)
{
	HAL_SPI_Init(&hspi2);
	HAL_GPIO_WritePin(BMI_CS_GPIO_Port, BMI_CS_Pin, GPIO_PIN_SET);
	HAL_Delay(1);
}