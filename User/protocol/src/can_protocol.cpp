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
 
#include "can_protocol.hpp"
#include "driver_can.hpp"
#include "device.hpp"
#include "string.h"

using namespace motor;

typedef struct {
	CAN_RxHeaderTypeDef header;
	uint8_t				data[8];
} CAN_RxFrameTypeDef;

CAN_RxFrameTypeDef hcan1RxFrame;
CAN_RxFrameTypeDef hcan2RxFrame;

extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;

/**
  * @Name    HAL_CAN_RxFifo0MsgPendingCallback
  * @brief   can接受中断，在stm32f4xx_hal_can.c内弱定义
  * @param   
**/
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
	uint8_t DEVICE_CNT;
	DEVICE_CNT = devices.GetMotorsCount();
  if (hcan == &hcan1) {
		 HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &hcan1RxFrame.header, hcan1RxFrame.data);
		for (uint16_t i=0; i<DEVICE_CNT; i++)
			if (devices.GetMotors(i)->GetDriveType() == kMotorDriverCAN1)
				if (devices.GetMotors(i)->GetRxId() == hcan1RxFrame.header.StdId)
					 devices.GetMotors(i)->GetCANRxMessage(hcan1RxFrame.data);
  } else if (hcan == &hcan2) {
		HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &hcan2RxFrame.header, hcan2RxFrame.data);
		for (uint16_t i=0; i<DEVICE_CNT; i++)
			if (devices.GetMotors(i)->GetDriveType() == kMotorDriverCAN2)
				if (devices.GetMotors(i)->GetRxId() == hcan2RxFrame.header.StdId)
					 devices.GetMotors(i)->GetCANRxMessage(hcan2RxFrame.data);
  }
  else 
    return;
}

/**
  * @Name    CAN_Send
  * @brief   can发送函数，在任务中调用
  * @param   
**/
uint8_t can_txbuff[8];
uint8_t DEVICE_CNT;
//const uint8_t RC_ONLINE = 1;
uint8_t RC_ONLINE = 0;
uint8_t CAN_Send(void) {
	memset(can_txbuff, 0, sizeof(can_txbuff));
	DEVICE_CNT = devices.GetMotorsCount();
	/*****0x200包*****/
	HAL_CAN_TxHeadeInit(kCANId_0x200);
	/*CAN1*/
	if (RC_ONLINE) {
		/*发送电机筛选遍历*/
		for (uint16_t i=0; i<DEVICE_CNT; i++)
			if (devices.GetMotors(i)->GetDriveType() == kMotorDriverCAN1)
				if (devices.GetMotors(i)->GetRxId() >= 0x201 &&
						 devices.GetMotors(i)->GetRxId() <= 0x204 &&
						 devices.GetMotors(i)->GetState() == kMotorInit)
							 devices.GetMotors(i)->AddCANTxMessage(can_txbuff);
	}
	if (HAL_CAN_AddTxMessage(&hcan1, &CAN_TxHeadeType, can_txbuff, 
		     (uint32_t *)CAN_TX_MAILBOX0) != HAL_OK)
		return HAL_ERROR;
	memset(can_txbuff, 0, sizeof(can_txbuff));
	/*CAN2*/
	if (RC_ONLINE) {
		/*发送电机筛选遍历*/
		for (uint16_t i=0; i<DEVICE_CNT; i++)
			if (devices.GetMotors(i)->GetDriveType() == kMotorDriverCAN2)
				if (devices.GetMotors(i)->GetRxId() >= 0x201 &&
						 devices.GetMotors(i)->GetRxId() <= 0x204 &&
						 devices.GetMotors(i)->GetState() == kMotorInit)
							 devices.GetMotors(i)->AddCANTxMessage(can_txbuff);
	}
	if (HAL_CAN_AddTxMessage(&hcan2, &CAN_TxHeadeType, can_txbuff, 
		     (uint32_t *)CAN_TX_MAILBOX1) != HAL_OK)
		return HAL_ERROR;
	memset(can_txbuff, 0, sizeof(can_txbuff));

	/*****0x1ff包*****/
	HAL_CAN_TxHeadeInit(kCANId_0x1ff);
	/*CAN1*/
	if (RC_ONLINE) {
		/*发送电机筛选遍历*/
		for (uint16_t i=0; i<DEVICE_CNT; i++)
			if (devices.GetMotors(i)->GetDriveType() == kMotorDriverCAN1)
				if (devices.GetMotors(i)->GetRxId() >= 0x205 &&
						 devices.GetMotors(i)->GetRxId() <= 0x208 &&
						 devices.GetMotors(i)->GetState() == kMotorInit)
							 devices.GetMotors(i)->AddCANTxMessage(can_txbuff);
	}
	if (HAL_CAN_AddTxMessage(&hcan1, &CAN_TxHeadeType, can_txbuff, 
		     (uint32_t *)CAN_TX_MAILBOX0) != HAL_OK)
		return HAL_ERROR;
	memset(can_txbuff, 0, sizeof(can_txbuff));
	/*CAN2*/
	if (RC_ONLINE) {
		/*发送电机筛选遍历*/
		for (uint16_t i=0; i<DEVICE_CNT; i++)
			if (devices.GetMotors(i)->GetDriveType() == kMotorDriverCAN2)
				if (devices.GetMotors(i)->GetRxId() >= 0x205 &&
						 devices.GetMotors(i)->GetRxId() <= 0x208 &&
						 devices.GetMotors(i)->GetState() == kMotorInit)
							 devices.GetMotors(i)->AddCANTxMessage(can_txbuff);
	}
	if (HAL_CAN_AddTxMessage(&hcan2, &CAN_TxHeadeType, can_txbuff, 
		     (uint32_t *)CAN_TX_MAILBOX1) != HAL_OK)
		return HAL_ERROR;
	memset(can_txbuff, 0, sizeof(can_txbuff));
	
	return HAL_OK;
}