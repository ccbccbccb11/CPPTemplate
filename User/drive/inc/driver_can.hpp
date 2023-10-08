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
#include <functional>
#include "string.h"

extern CAN_TxHeaderTypeDef CAN_TxHeadeType;
extern CAN_RxHeaderTypeDef CAN_RxHeadeType;
extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;

void CAN1_Init(void); //CAN1初始化
void CAN2_Init(void); //CAN2初始化
void HAL_CAN_TxHeadeInit(uint16_t ID);//配置CAN发送帧头
void CAN_FilterParamsInit(CAN_FilterTypeDef *sFilterConfig); //配置CAN标识符滤波器
/* CANInstance 只发送初始化用*/
typedef struct CANInstanceTxConfig_t
{
  CAN_HandleTypeDef* can_handle;  // can句柄
  uint32_t tx_id;                 // 发送id
} CANInstanceTxConfig;
/* CANInstance 初始化用*/
typedef struct CANInstanceConfig_t
{
  CAN_HandleTypeDef* can_handle;  // can句柄
  uint32_t tx_id;                 // 发送id
  uint32_t rx_id;                 // 接收id
} CANInstanceConfig;
/* can 实例*/
class CANInstance {
private:
  CAN_HandleTypeDef* can_handle_;  // can句柄
  CAN_TxHeaderTypeDef tx_config_;      // CAN报文发送配置
  uint32_t tx_id_;                 // 发送id
  uint32_t tx_mailbox_;            // CAN消息填入的邮箱号
  uint8_t  tx_buff_[8];            // 发送缓存
  uint32_t rx_id_;                 // 接收id
  uint8_t  rx_len_;                // 接收长度,可能为0-8
  uint8_t  rx_buff_[8];            // 接收缓存,最大消息长度为8
public:
	static uint8_t can_ins_cnt_;			// 实体计数
	static const uint32_t can_tx_timecnt_max_;			// 实体计数
	static const uint8_t can_ins_cnt_max_;	// 允许最大实体数
	/**
	 * @brief 默认构造函数
	 * 
	 */
	CANInstance() {}
	/**
	 * @brief 默认构造函数
	 * 
	 */
	CANInstance(CANInstanceConfig* config);
	/**
	 * @brief 构造函数，以结构体为入口参数，
	 *        但未初始化接受回调函数指针，需手动初始化
	 */
	CANInstance(CANInstanceTxConfig* config);
	/**
	 * @brief 构造函数，以成员为入口参数，
	 *        但未初始化接受回调函数指针，需手动初始化
	 */
	CANInstance(CAN_HandleTypeDef* can_handle, 
					uint32_t tx_id, uint32_t rx_id);
	/**
	 * @brief 构造函数，以成员为入口参数，
	 *        初始化接受回调函数指针
	 */
	CANInstance(CAN_HandleTypeDef* can_handle, 
					uint32_t tx_id, uint32_t rx_id, 
					std::function<void()> callback);
	// 设置发送数据包的长度
	void SetTxConfigDLC(uint8_t length) {
		if (length < 8 && length > 0) {
			tx_config_.DLC = length;
		}
	}
	// 设置接受长度
	void SetRxDataLength(uint8_t length) {
		if (length < 8 && length > 0) {
			rx_len_ = length;
		}
	}
	// 返回 can 句柄
	CAN_HandleTypeDef* GetCANHandle(void) {
		return can_handle_;
	}
	// 实例 CAN Tx message header 配置地址
	CAN_TxHeaderTypeDef* GetTxConfig(void) {
		return &tx_config_;
	}
	// 实例发送数组指针
	uint8_t* GetTxBuff(void) {
		return tx_buff_;
	}
	// 实例发送数组指针
	uint8_t* GetRxBuff(void) {
		return rx_buff_;
	}
	// 实例接收 id
	uint32_t GetRxId(void) {
		return rx_id_;
	}
	// 更新 can 接收数组
	void RxBuffUpdate(uint8_t* rx_buff) {
		memcpy(rx_buff_, rx_buff, rx_len_);
	}
  /**
   * @brief 接收回调指针，链接父子
   * 
   */
  std::function<void()> CANInstanceRxCallback_; 
  // 设置回调函数
  void SetCANInstanceRxCallback(std::function<void()> callback) {
      CANInstanceRxCallback_ = callback;
  }
  /**
   * @brief 发送
   * 
   */
	static void CANSend(CANInstance* instance) {
		static uint32_t starting_time;
		while (HAL_CAN_GetTxMailboxesFreeLevel(instance->GetCANHandle()) == 0) {
			starting_time++;
			if (starting_time > CANInstance::can_tx_timecnt_max_) {
				starting_time = 0;
				return;
			}
		}
		starting_time = 0;
		if (instance->GetCANHandle() == &hcan1) {
			HAL_CAN_AddTxMessage(&hcan1, instance->GetTxConfig(), instance->GetTxBuff(), (uint32_t *)CAN_TX_MAILBOX0);
		} else if (instance->GetCANHandle() == &hcan2) {
			HAL_CAN_AddTxMessage(&hcan2, instance->GetTxConfig(), instance->GetTxBuff(), (uint32_t *)CAN_TX_MAILBOX1);
		} else {
			return;
		}
	}
};






#endif