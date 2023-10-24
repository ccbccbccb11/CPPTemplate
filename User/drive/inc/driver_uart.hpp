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
const uint16_t USART2_RX_DATA_FRAME_LEN = 18;// ����2����֡����
const uint16_t USART2_RX_BUF_LEN = USART2_RX_DATA_FRAME_LEN+6u;// ����2���ջ���������
const uint16_t USART3_RX_BUF_LEN = 200;
const uint16_t USART4_RX_BUF_LEN = 200;
const uint16_t USART5_RX_BUF_LEN = 200;
const uint16_t USART6_RX_BUF_LEN = 200;
			
void USART1_Init(void);//����1��ʼ��
void USART2_Init(void);//����2��ʼ��
void USART3_Init(void);//����3��ʼ��
void USART4_Init(void);//����4��ʼ��
void USART5_Init(void);//����5��ʼ��
void USART6_Init(void);//����6��ʼ��
void DRV_UART_IRQHandler(UART_HandleTypeDef *huart);//���ڿ����ж�
static void dma_m0_rxcplt_callback(DMA_HandleTypeDef *hdma);//dma������0���ջص�
static void dma_m1_rxcplt_callback(DMA_HandleTypeDef *hdma);//dma������1���ջص�
static void uart_rx_idle_callback(UART_HandleTypeDef* huart);//�����жϽ��ջص�
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
