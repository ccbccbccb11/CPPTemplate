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
 
#ifndef DRIVER_CAN_HPP
#define DRIVER_CAN_HPP

#include "stm32f4xx_hal.h"
#include "utils.h"
#include <functional>
#include "string.h"

extern CAN_TxHeaderTypeDef CAN_TxHeadeType;
extern CAN_RxHeaderTypeDef CAN_RxHeadeType;
extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;
class CANInstance;

void CAN1_Init(void); // CAN1 initialize
void CAN2_Init(void); // CAN2 initialize
void CAN_FilterParamsInit(CAN_FilterTypeDef *sFilterConfig); //Configure the CAN identifier filter

typedef struct {
	CAN_RxHeaderTypeDef header;
	uint8_t				data[8];
} CAN_RxFrameTypeDef;
/* CANInstance Used during initialization which send only */
typedef struct CANInstanceTxConfig_t
{
  CAN_HandleTypeDef* can_handle;  
  uint32_t tx_id;                 
} CANInstanceTxConfig;
/* CANInstance Used during initialization*/
typedef struct CANInstanceConfig_t
{
  CAN_HandleTypeDef* can_handle;  
  uint32_t tx_id;                 
  uint32_t rx_id;                 
  void (*CANInstanceRxCallback)(CANInstance* ins);
} CANInstanceConfig;
/* can instance*/
class CANInstance {
private:
  CAN_HandleTypeDef* can_handle_;               
  CAN_TxHeaderTypeDef tx_config_;               // CAN packet sending configuration
  uint32_t tx_id_;                              
  uint32_t tx_mailbox_;                         // The mailbox number entered in the CAN message
  uint8_t  tx_buff_[8];                         // Send buffer
  uint32_t rx_id_;                              
  size_t  rx_len_;                              // The receive length ranges from 0 to 8
  uint8_t  rx_buff_[8];                         // Receive cache with a maximum message length of 8
public:
	static const uint32_t can_tx_timecnt_max_;		// Send lost contact count
	static const uint8_t can_ins_cnt_max_;	      // The maximum number of entities allowed
  void (*CANInstanceRxCallback_)(CANInstance* ins);

  // Constructor, in struct body parameter mode
	CANInstance(CANInstanceConfig* config);

  // Constructor, send only
	CANInstance(CANInstanceTxConfig* config);

	// Set the length of the packet to be sent
	void SetTxConfigDLC(uint8_t length) { tx_config_.DLC = math::Constrain<uint8_t>(length,0,8); }

	// Set rx data length
	void SetRxDataLength(uint32_t length) { rx_len_ = math::Constrain<uint32_t>(length,0,8); }

	// Return can handle
	CAN_HandleTypeDef* GetCANHandle(void) { return can_handle_; }

	// Return CAN Tx message header Configuration address
	CAN_TxHeaderTypeDef* GetTxConfig(void) { return &tx_config_; }

	// Return tx buff 
	uint8_t* GetTxBuff(void) { return tx_buff_; }

  // Set tx buff
  void SetTxbuff(uint8_t* tx_buff) { memcpy(tx_buff_, tx_buff, sizeof(tx_buff_)); }

  // Configure address Settings to send arrays in bytes
  void SetTxbuff(uint8_t index, uint8_t val) { tx_buff_[index] = val; }

	// rx buff ptr
	uint8_t* GetRxBuff(void) { return rx_buff_; }

	// Instance rx id
	uint32_t GetRxId(void) { return rx_id_; }

	// Update the can receive array
	void RxBuffUpdate(uint8_t* rx_buff) { memcpy(rx_buff_, rx_buff, rx_len_); }

   /**
   * @brief 接收回调指针，链接父子
   * 
   *        32会在bind中跑死未解决
   */
  // std::function<void()> CANInstanceRxCallback_; 
  // // 设置回调函数
  // void SetCANInstanceRxCallback(std::function<void()> callback) {
  //     CANInstanceRxCallback_ = callback;
  // }

  /**
   * @brief Transmit
   * 
   */
	HAL_StatusTypeDef Transmit(void);
};






#endif