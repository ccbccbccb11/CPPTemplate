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
 
#ifndef UART_PROTOCOL_HPP
#define UART_PROTOCOL_HPP

#include "stm32f4xx_hal.h"
#include "crc.hpp"
#include <iostream>
#include <vector>

#ifdef __cplusplus
			/* C++ code */
namespace myuart {
	// 初始化状态
typedef enum {
	kUartEmpty,
	kUartInit,
} UartInit;
	// 工作状态
typedef enum {
	kUartRxSuccess = 0,
	kUartRxFail,
	kUartTxSuccess = 0,
	kUartTxFail,
} UartState;
	// 帧头
typedef enum {
	kHeader = 0xA5,
} UartConfig;
	// 接收结构体示例
typedef  struct __packed {
	uint8_t  	SOF;
	uint8_t  	datau8;
	uint8_t  	CRC8;
	/* user data */
	uint16_t CRC16;
} ExampleRxInfo_t;
	// 发送结构体示例
typedef  struct __packed {
	uint8_t  	SOF;
	uint8_t  	datau8;
	uint8_t  	CRC8;
	/* user data */
	uint16_t CRC16;
} ExampleTxInfo_t;
	// 串口类模板
template <typename Trx, typename Ttx>
class Uart {
	public:
			// 指定串口
		Uart(UART_HandleTypeDef huartx)  : 
			 huartx_(huartx) {}
			// 串口接收数据
		UartState RxData(uint8_t *rxBuf) {
			if (rxBuf[0] == kHeader) {
				if (Verify_CRC8_Check_Sum(rxBuf, 3) == true) {
					if (Verify_CRC16_Check_Sum(rxBuf, sizeof(Trx)) == true) {
						memcpy(&rxstruct_, rxBuf, sizeof(Trx));
						return kUartRxSuccess;
					}
				}
			}
			return kUartRxFail;
		}
			// 串口发送数据
		UartState TxData(void) {
			CreateTxBuff(sizeof(Ttx));
			memcpy(txbuff_, &txstruct_, sizeof(Ttx));
			Append_CRC8_Check_Sum(txbuff_, 3);
			Append_CRC16_Check_Sum(txbuff_, sizeof(Ttx));
			if (HAL_UART_Transmit_DMA(&huartx_, txbuff_, sizeof(Ttx)) == HAL_OK) {
				DeleteTxBuff();
				return kUartTxSuccess;
			}
			DeleteTxBuff();
			return kUartTxFail;
		}
			// 创建发送数组
		void CreateTxBuff(size_t size) {
			txbuff_ = new uint8_t[size]; // 动态分配一个大小为 size 的数组
			buff_size_ = size; // 更新数组大小
		}
			// 删除发送数组
		void DeleteTxBuff(void) {
			delete[] txbuff_;
		}
			// 
		UART_HandleTypeDef GetUartx(void) {
			return huartx_;
		}
		
		Ttx	txstruct_ = {
			.SOF = kHeader,
		};

	private:
		UART_HandleTypeDef 	huartx_;
		UartInit			init_flag_;
		uint8_t*			txbuff_;
		size_t				buff_size_;
		UartState			rx_state_;
		UartState			tx_state_;
		Trx					rxstruct_;
};
}
#endif /*__cplusplus*/

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/* C code */
void USART1_rxDataHandler(uint8_t *rxBuf);
void USART2_rxDataHandler(uint8_t *rxBuf);
void USART3_rxDataHandler(uint8_t *rxBuf);
void USART4_rxDataHandler(uint8_t *rxBuf);
void USART5_rxDataHandler(uint8_t *rxBuf);
void USART6_rxDataHandler(uint8_t *rxBuf);
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
#endif /* UART_PROTOCOL_HPP */
	
	
	
	
	
	
	
	
	
	
	
	