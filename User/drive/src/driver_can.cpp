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
 
#include "driver_can.hpp"

typedef struct {
	CAN_RxHeaderTypeDef header;
	uint8_t				data[8];
} CAN_RxFrameTypeDef;
CAN_RxFrameTypeDef hcanRxFrame;

CAN_TxHeaderTypeDef CAN_TxHeadeType;

uint8_t CANInstance::can_ins_cnt_ = 0;
const uint8_t CANInstance::can_ins_cnt_max_ = 200;
const uint32_t CANInstance::can_tx_timecnt_max_ = 1;
static CANInstance* can_instance[CANInstance::can_ins_cnt_max_] = {NULL};
//仅发送
CANInstance::CANInstance(CANInstanceTxConfig* config) {
  can_handle_ = config->can_handle;
  tx_id_ = config->tx_id;
	tx_config_.StdId = tx_id_;
	tx_config_.ExtId = 0x0000;
	tx_config_.DLC = 0x08;
	tx_config_.IDE = CAN_ID_STD;
	tx_config_.RTR = CAN_RTR_DATA;
}
//未初始化接受回调，需后面调用SetCANInstanceRxCallback()
CANInstance::CANInstance(CANInstanceConfig* config) {
  can_handle_ = config->can_handle;
  tx_id_ = config->tx_id;
  rx_id_ = config->rx_id;
	if (!CANInstance::can_ins_cnt_) {
		CAN1_Init();
		CAN2_Init();
	}
	if (CANInstance::can_ins_cnt_ > CANInstance::can_ins_cnt_max_) {
		while (1)
			continue;
	}
	for (size_t i = 0; i < CANInstance::can_ins_cnt_; i++) {
		if (can_instance[i]->rx_id_ == config->rx_id && 
			can_instance[i]->can_handle_ == config->can_handle) {
			while (1)
				continue;
		}
	}
	tx_config_.StdId = tx_id_;
	tx_config_.ExtId = 0x0000;
	tx_config_.DLC = 0x08;
	tx_config_.IDE = CAN_ID_STD;
	tx_config_.RTR = CAN_RTR_DATA;
	can_instance[CANInstance::can_ins_cnt_++] = this;
}
//构造时完全初始化
CANInstance::CANInstance(CAN_HandleTypeDef *can_handle, 
							uint32_t tx_id, uint32_t rx_id, 
							std::function<void()> callback) : 
							can_handle_(can_handle), 
							tx_id_(tx_id), rx_id_(rx_id),
							CANInstanceRxCallback_(callback) {
	if (!CANInstance::can_ins_cnt_) {
		CAN1_Init();
		CAN2_Init();
	}
	if (CANInstance::can_ins_cnt_ > CANInstance::can_ins_cnt_max_) {
		while (1)
			continue;
	}
	for (size_t i = 0; i < CANInstance::can_ins_cnt_; i++) {
		if (can_instance[i]->rx_id_ == rx_id && 
			can_instance[i]->can_handle_ == can_handle) {
			while (1)
				continue;
		}
	}
	tx_config_.StdId = tx_id_;
	tx_config_.ExtId = 0x0000;
	tx_config_.DLC = 0x08;
	tx_config_.IDE = CAN_ID_STD;
	tx_config_.RTR = CAN_RTR_DATA;
	can_instance[CANInstance::can_ins_cnt_++] = this;
}
/*
	can1 can2
*/
extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;

/**
  * @brief  CAN1
  * @param  
  */
void CAN1_Init(void) {
	CAN_FilterTypeDef sFilterConfig;
	// CAN
	CAN_FilterParamsInit(&sFilterConfig);
	HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig);
	// 
	HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING);
	// CAN1
	HAL_CAN_Start(&hcan1);
}

/**
  * @brief  CAN2
  * @param  
  */
void CAN2_Init(void) {
	CAN_FilterTypeDef sFilterConfig;
	// CAN
	CAN_FilterParamsInit(&sFilterConfig);
	HAL_CAN_ConfigFilter(&hcan2, &sFilterConfig);
	// 
	HAL_CAN_ActivateNotification(&hcan2, CAN_IT_RX_FIFO0_MSG_PENDING);
	// CAN2
	HAL_CAN_Start(&hcan2);
}

/**
  * @brief  CAN
  * @param  
  */
void CAN_FilterParamsInit(CAN_FilterTypeDef *sFilterConfig) {
	sFilterConfig->FilterIdHigh = 0;						
	sFilterConfig->FilterIdLow = 0;							
	sFilterConfig->FilterMaskIdHigh = 0;											
	sFilterConfig->FilterMaskIdLow = 0;												
	sFilterConfig->FilterFIFOAssignment = CAN_FILTER_FIFO0;		
	sFilterConfig->FilterBank = 0;													
	sFilterConfig->FilterMode = CAN_FILTERMODE_IDMASK;				
	sFilterConfig->FilterScale = CAN_FILTERSCALE_32BIT;				
	sFilterConfig->FilterActivation = ENABLE;									
	sFilterConfig->SlaveStartFilterBank = 0;
}

/**
  * @Name    HAL_CAN_RxFifo0MsgPendingCallback
  * @brief   can接受中断，在stm32f4xx_hal_can.c内弱定义
  * @param   
**/
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
	HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &hcanRxFrame.header, hcanRxFrame.data);
	for (size_t i = 0; i < CANInstance::can_ins_cnt_; i++) {
		if (can_instance[i]->GetCANHandle() == hcan && 
			can_instance[i]->GetRxId() == hcanRxFrame.header.StdId) {
			if (can_instance[i]->CANInstanceRxCallback_ != NULL) {
				can_instance[i]->SetRxDataLength(hcanRxFrame.header.DLC);
				can_instance[i]->RxBuffUpdate(hcanRxFrame.data);
				can_instance[i]->CANInstanceRxCallback_();
			}
			return;
		}
	}
}

/**
  * @Name    CAN
  * @brief   can 
  * @param   
**/

