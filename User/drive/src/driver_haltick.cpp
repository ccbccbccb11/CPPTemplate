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
 
 #include "driver_haltick.hpp"
 
uint32_t haltick = 0;
/**
 *	@note	
 *	ʹ��cubemx����FREERTOS��Ὠ�齫SYS��ʱ���л��ɳ�SysTick֮��Ķ�ʱ��
 *	�Ӷ�ϵͳ���������ʱ����������RTOS��SysTick ������HAL��HalTick
 *	SysTick ʹ��cortex-m4�ں˵�SysTick (SysTick->VAL�����������������֮��Ÿ���)
 *	HalTick �ڱ���������ʹ��TIM2 (TIM2->CNT���ṩ΢���ʱ)
 *	# delay_us �� delay_ms ���������������(������)
 */
uint32_t micros(void) {
	uint32_t ms, us;
	ms = HAL_GetTick();
	// ѡ�ö�ʱ��2��ΪHALʱ����TimeBase
	// Freq:1MHz => 1Tick = 1us
	// Period:1ms
	us = TIM2->CNT;
  haltick = ms*1000 + us;
	return haltick;
}

void delay_us(uint32_t us) {
	uint32_t now = micros();
	while((micros() - now) < us)
		continue;
}

void delay_ms(uint32_t ms) {
	while(ms--)
		delay_us(1000);
}
