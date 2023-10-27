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
#include <map>

CAN_RxFrameTypeDef hcanRxFrame;
CAN_TxHeaderTypeDef CAN_TxHeadeType;

const uint8_t CANInstance::can_ins_cnt_max_ = 6;
const uint32_t CANInstance::can_tx_timecnt_max_ = 1;
std::map<uint32_t, CANInstance*> can1_node_map;       // use a map to store the can nodes
std::map<uint32_t, CANInstance*> can2_node_map;       // use a map to store the can nodes

/**
 * @brief Construct a new CANInstance::CANInstance object
 * 
 * @param config 
 */
CANInstance::CANInstance(CANInstanceTxConfig* config) {
  can_handle_ = config->can_handle;
  tx_id_ = config->tx_id;
	tx_config_.StdId = tx_id_;
	tx_config_.ExtId = 0x0000;
	tx_config_.DLC = 0x08;
	tx_config_.IDE = CAN_ID_STD;
	tx_config_.RTR = CAN_RTR_DATA;
}
/**
 * @brief Construct a new CANInstance::CANInstance object
 * 
 * @param config 
 */
CANInstance::CANInstance(CANInstanceConfig* config) { 
  can_handle_ = config->can_handle;
  tx_id_ = config->tx_id;
  rx_id_ = config->rx_id;
  CANInstanceRxCallback_ = config->CANInstanceRxCallback;

  if (can1_node_map.size() > CANInstance::can_ins_cnt_max_ || 
      can2_node_map.size() > CANInstance::can_ins_cnt_max_)
    while (true)
      continue;
  
  if (can_handle_ == &hcan1) { 
    auto it = can1_node_map.find(rx_id_); 
    while (it != can1_node_map.end())
      continue;
  } else { 
    auto it = can2_node_map.find(rx_id_); 
    while (it != can2_node_map.end())
      continue;
  }

	tx_config_.StdId = tx_id_;
	tx_config_.ExtId = 0x0000;
	tx_config_.DLC = 0x08;
	tx_config_.IDE = CAN_ID_STD;
	tx_config_.RTR = CAN_RTR_DATA;
  
	// The initial successful can instance is added to map to save a copy
  if (can_handle_ == &hcan1)
    can1_node_map.insert(std::pair<uint32_t, CANInstance *>(rx_id_, this));
  else
    can2_node_map.insert(std::pair<uint32_t, CANInstance *>(rx_id_, this));
  
}
/**
 * @brief can1 can2
 */
extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;
/**
 * @brief CAN1_Init
 * 
 */
void CAN1_Init(void) {
	CAN_FilterTypeDef sFilterConfig;
	CAN_FilterParamsInit(&sFilterConfig);
	HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig);
	HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING);
	HAL_CAN_Start(&hcan1);
}

/**
  * @brief  CAN2_Init
  * 
  */
void CAN2_Init(void) {
	CAN_FilterTypeDef sFilterConfig;
	CAN_FilterParamsInit(&sFilterConfig);
	HAL_CAN_ConfigFilter(&hcan2, &sFilterConfig);
	HAL_CAN_ActivateNotification(&hcan2, CAN_IT_RX_FIFO0_MSG_PENDING);
	HAL_CAN_Start(&hcan2);
}

/**
  * @brief  CAN
  * @param  
  */
void CAN_FilterParamsInit(CAN_FilterTypeDef *sFilterConfig) {
	// Init filter configuration structure
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
  * @brief   weak defined in stm32f4xx_hal_can.c
  * @param   
**/
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan) {
	HAL_CAN_GetRxMessage(hcan, CAN_RX_FIFO0, &hcanRxFrame.header, hcanRxFrame.data);
	uint32_t key = hcanRxFrame.header.StdId;
	// Loop through all CAN instances
  if (hcan == &hcan1) {
		// If the CAN instance matches the CAN handle and Rx ID
    if (can1_node_map.find(key) != can1_node_map.end()) {
			// If the CAN Rx callback is not NULL
      if (can1_node_map[key]->CANInstanceRxCallback_ != NULL) {
				// Update the CAN Rx data length
				can1_node_map[key]->SetRxDataLength(hcanRxFrame.header.DLC);
				// Update the CAN Rx buffer
				can1_node_map[key]->RxBuffUpdate(hcanRxFrame.data);
				// Call the CAN Rx callback
				can1_node_map[key]->CANInstanceRxCallback_(can1_node_map[key]);
      }
    }
  } else if (hcan == &hcan2) {
		// If the CAN instance matches the CAN handle and Rx ID
    if (can2_node_map.find(hcanRxFrame.header.StdId) != can2_node_map.end()) {
			// If the CAN Rx callback is not NULL
      if (can2_node_map[key]->CANInstanceRxCallback_ != NULL) {
				// Update the CAN Rx data length
				can2_node_map[key]->SetRxDataLength(hcanRxFrame.header.DLC);
				// Update the CAN Rx buffer
				can2_node_map[key]->RxBuffUpdate(hcanRxFrame.data);
				// Call the CAN Rx callback
				can2_node_map[key]->CANInstanceRxCallback_(can2_node_map[key]);
      }
    }
  }
}

