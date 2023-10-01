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
 
#include "uart_protocol.hpp"
#include "usart.h"

// example
using namespace myuart;
Uart<ExampleRxInfo_t, ExampleTxInfo_t> myuart1(huart1);

/**
  * @Name    USART1_rxDataHandler
  * @brief   
  * @param   
**/
void USART1_rxDataHandler(uint8_t *rxBuf) {
	myuart1.RxData(rxBuf);
}
/**
  * @Name    USART2_rxDataHandler
  * @brief   遥控器更新
  * @param   
**/
void USART2_rxDataHandler(uint8_t *rxBuf) {
//	/* 遥控器信息更新 */
//	rc_base_info_update(rc.base_info,rxBuf);
//	rc_base_info_check(rc.base_info); 
//	
 //	/* 遥控器更新 */
//	rc_interrupt_update(&rc);
}
/**
  * @Name    USART3_rxDataHandler
  * @brief   
  * @param   
**/
void USART3_rxDataHandler(uint8_t *rxBuf) {
}
/**
  * @Name    USART4_rxDataHandler
  * @brief   
  * @param   
**/
void USART4_rxDataHandler(uint8_t *rxBuf) {
}
/**
  * @Name    USART4_rxDataHandler
  * @brief   
  * @param   
**/
void USART5_rxDataHandler(uint8_t *rxBuf) {
}
/**
  * @Name    USART6_rxDataHandler
  * @brief   
  * @param   
**/
void USART6_rxDataHandler(uint8_t *rxBuf) {
}