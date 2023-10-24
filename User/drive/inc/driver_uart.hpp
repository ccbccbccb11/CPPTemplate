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

#ifndef DRIVER_UART_HPP
#define DRIVER_UART_HPP

#include "stm32f4xx_hal.h"
const uint16_t USART1_RX_BUF_LEN = 350;
const uint16_t USART2_RX_DATA_FRAME_LEN = 18;// 串口2数据帧长度
const uint16_t USART2_RX_BUF_LEN = USART2_RX_DATA_FRAME_LEN+6u;// 串口2接收缓冲区长度
const uint16_t USART3_RX_BUF_LEN = 200;
const uint16_t USART4_RX_BUF_LEN = 200;
const uint16_t USART5_RX_BUF_LEN = 200;
const uint16_t USART6_RX_BUF_LEN = 200;
			
void USART1_Init(void);//串口1初始化
void USART2_Init(void);//串口2初始化
void USART3_Init(void);//串口3初始化
void USART4_Init(void);//串口4初始化
void USART5_Init(void);//串口5初始化
void USART6_Init(void);//串口6初始化
void DRV_UART_IRQHandler(UART_HandleTypeDef *huart);//串口空闲中断
static void dma_m0_rxcplt_callback(DMA_HandleTypeDef *hdma);//dma缓冲区0接收回调
static void dma_m1_rxcplt_callback(DMA_HandleTypeDef *hdma);//dma缓冲区1接收回调
static void uart_rx_idle_callback(UART_HandleTypeDef* huart);//空闲中断接收回调
static HAL_StatusTypeDef DMAEx_MultiBufferStart_NoIT(DMA_HandleTypeDef *hdma, \
                                                    uint32_t SrcAddress, \
                                                    uint32_t DstAddress, \
                                                    uint32_t SecondMemAddress, \
                                                    uint32_t DataLength);
static HAL_StatusTypeDef DMA_Start(DMA_HandleTypeDef *hdma, \
                            uint32_t SrcAddress, \
                            uint32_t DstAddress, \
                            uint32_t DataLength);
#endif
