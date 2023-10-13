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
class CANInstance;

void CAN1_Init(void); //CAN1��ʼ��
void CAN2_Init(void); //CAN2��ʼ��
void HAL_CAN_TxHeadeInit(uint16_t ID);//����CAN����֡ͷ
void CAN_FilterParamsInit(CAN_FilterTypeDef *sFilterConfig); //����CAN��ʶ���˲���
/* CANInstance ֻ���ͳ�ʼ����*/
typedef struct CANInstanceTxConfig_t
{
  CAN_HandleTypeDef* can_handle;  // can���
  uint32_t tx_id;                 // ����id
} CANInstanceTxConfig;
/* CANInstance ��ʼ����*/
typedef struct CANInstanceConfig_t
{
  CAN_HandleTypeDef* can_handle;  // can���
  uint32_t tx_id;                 // ����id
  uint32_t rx_id;                 // ����id
  void (*CANInstanceRxCallback)(CANInstance* ins);
  void* parent_pointer;
} CANInstanceConfig;
/* can ʵ��*/
class CANInstance {
private:
  CAN_HandleTypeDef* can_handle_;  // can���
  CAN_TxHeaderTypeDef tx_config_;      // CAN���ķ�������
  uint32_t tx_id_;                 // ����id
  uint32_t tx_mailbox_;            // CAN��Ϣ����������
  uint8_t  tx_buff_[8];            // ���ͻ���
  uint32_t rx_id_;                 // ����id
  uint8_t  rx_len_;                // ���ճ���,����Ϊ0-8
  uint8_t  rx_buff_[8];            // ���ջ���,�����Ϣ����Ϊ8
  void* parent_pointer_;            // ��ָ�룬�������canʵ���ĸ���ĵ�ַ
public:
	static uint8_t can_ins_cnt_;			// ʵ�����
	static const uint32_t can_tx_timecnt_max_;			// ʵ�����
	static const uint8_t can_ins_cnt_max_;	// �������ʵ����
  void (*CANInstanceRxCallback_)(CANInstance* ins);
	/**
	 * @brief Ĭ�Ϲ��캯��
	 * 
	 */
	CANInstance() {}
	/**
	 * @brief Ĭ�Ϲ��캯��
   *        ��δ��ʼ�����ܻص�����ָ�룬���ֶ���ʼ�� 
	 * 
	 */
	CANInstance(CANInstanceConfig* config);
	/**
	 * @brief ���캯����������
	 *        
	 */
	CANInstance(CANInstanceTxConfig* config);
	/**
	 * @brief ���캯�����Գ�ԱΪ��ڲ�����
	 *        ��δ��ʼ�����ܻص�����ָ�룬���ֶ���ʼ��
	 */
	CANInstance(CAN_HandleTypeDef* can_handle, 
					uint32_t tx_id, uint32_t rx_id);
	// ���÷������ݰ��ĳ���
	void SetTxConfigDLC(uint8_t length) {
		if (length < 8 && length > 0) {
			tx_config_.DLC = length;
		}
	}
	// ���ý��ܳ���
	void SetRxDataLength(uint8_t length) {
		if (length < 8 && length > 0) {
			rx_len_ = length;
		}
	}
	// ���� can ���
	CAN_HandleTypeDef* GetCANHandle(void) {
		return can_handle_;
	}
	// ʵ�� CAN Tx message header ���õ�ַ
	CAN_TxHeaderTypeDef* GetTxConfig(void) {
		return &tx_config_;
	}
	// ʵ����������ָ��
	uint8_t* GetTxBuff(void) {
		return tx_buff_;
	}
  // ���÷�����������
  void SetTxbuff(uint8_t* tx_buff) {
		memcpy(tx_buff_, tx_buff, sizeof(tx_buff_));
  }
  // ���÷������鰴�ֽ�
  void SetTxbuff(uint8_t index, uint8_t val){
    tx_buff_[index] = val;
  }
	// ʵ����������ָ��
	uint8_t* GetRxBuff(void) {
		return rx_buff_;
	}
	// ʵ������ id
	uint32_t GetRxId(void) {
		return rx_id_;
	}
	// ���� can ��������
	void RxBuffUpdate(uint8_t* rx_buff) {
		memcpy(rx_buff_, rx_buff, rx_len_);
	}
  /**
   * @brief ���ջص�ָ�룬���Ӹ���
   * 
   *        32����bind������δ���
   */
  // std::function<void()> CANInstanceRxCallback_; 
  // // ���ûص�����
  // void SetCANInstanceRxCallback(std::function<void()> callback) {
  //     CANInstanceRxCallback_ = callback;
  // }
  void* GetParentPoint(void) {
    return parent_pointer_;
  }
  /**
   * @brief ����
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
    memset(instance->tx_buff_, 0, sizeof(instance->tx_buff_));
	}
};






#endif