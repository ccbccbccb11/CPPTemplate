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
 
#ifndef DRIVER_TIM_H
#define DRIVER_TIM_H

#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_tim.h"
#include "tim.h"

#ifdef __cplusplus
			/*user code*/
class PwmInstance {
	public:
		PwmInstance() : pwm_init_(0) {};
		PwmInstance(TIM_HandleTypeDef htimx,
				uint32_t TIM_CHANNEL_x) : 
				htimx_(htimx),
				timx_(htimx.Instance),
				TIM_CHANNEL_x_(TIM_CHANNEL_x),
				pwm_init_(1) {
			HAL_TIM_PWM_Start(&htimx, TIM_CHANNEL_x);
		};

		void Output(int16_t compare) {
			if (TIM_CHANNEL_x_ == TIM_CHANNEL_1) { 
				timx_->CCR1 = compare; 
			} else if (TIM_CHANNEL_x_ == TIM_CHANNEL_2) { 
				timx_->CCR2 = compare; 
			} else if (TIM_CHANNEL_x_ == TIM_CHANNEL_3) { 
				timx_->CCR3 = compare; 
			} else { 
				timx_->CCR4 = compare; 
			}
		}
		
		void Sleep(void) {
			HAL_TIM_PWM_Stop(&htimx_, TIM_CHANNEL_x_);
		}
		
		void Weak(void) {
			HAL_TIM_PWM_Start(&htimx_, TIM_CHANNEL_x_);
		}
		
	private:
		TIM_HandleTypeDef htimx_;
		TIM_TypeDef* timx_;
		uint32_t TIM_CHANNEL_x_;
		bool pwm_init_;
};
#endif  /* __cplusplus */
#endif