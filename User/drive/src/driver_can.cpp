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
 
CAN_FilterTypeDef 	CAN_FillterType;
CAN_TxHeaderTypeDef CAN_TxHeadeType;
CAN_RxHeaderTypeDef CAN_RxHeadeType;

/*
	can1 can2ʵ��
*/
extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;

/**
  * @brief  CAN1��ʼ��
  * @param  
  */
void CAN1_Init(void) {
	CAN_FilterTypeDef sFilterConfig;
	// ����CAN��ʶ���˲���
	CAN_FilterParamsInit(&sFilterConfig);
	HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig);
	// ʹ�ܽ����ж�
	HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING);
	// ����CAN1
	HAL_CAN_Start(&hcan1);
}

/**
  * @brief  CAN2��ʼ��
  * @param  
  */
void CAN2_Init(void) {
	CAN_FilterTypeDef sFilterConfig;
	// ����CAN��ʶ���˲���
	CAN_FilterParamsInit(&sFilterConfig);
	HAL_CAN_ConfigFilter(&hcan2, &sFilterConfig);
	// ʹ�ܽ����ж�
	HAL_CAN_ActivateNotification(&hcan2, CAN_IT_RX_FIFO0_MSG_PENDING);
	// ����CAN2
	HAL_CAN_Start(&hcan2);
}

/**
  * @brief  ����CAN��ʶ���˲���
  * @param  
  */
void CAN_FilterParamsInit(CAN_FilterTypeDef *sFilterConfig) {
	sFilterConfig->FilterIdHigh = 0;						
	sFilterConfig->FilterIdLow = 0;							
	sFilterConfig->FilterMaskIdHigh = 0;											// ������
	sFilterConfig->FilterMaskIdLow = 0;												// ������
	sFilterConfig->FilterFIFOAssignment = CAN_FILTER_FIFO0;		// ������������FIFO0
	sFilterConfig->FilterBank = 0;														// ���ù�����0
	sFilterConfig->FilterMode = CAN_FILTERMODE_IDMASK;				// ��ʶ������ģʽ
	sFilterConfig->FilterScale = CAN_FILTERSCALE_32BIT;				// 32λ��
	sFilterConfig->FilterActivation = ENABLE;									// �����˲���
	sFilterConfig->SlaveStartFilterBank = 0;
}

/**
  * @brief  ����CAN����֡ͷ
	* @param  ID : Specifies the standard identifier
  */
void HAL_CAN_TxHeadeInit(uint16_t ID) {
	CAN_TxHeadeType.StdId = ID;						//���ñ�ʶ��
	CAN_TxHeadeType.ExtId = 0x0000;				//����չ
	CAN_TxHeadeType.DLC = 8;							//֡��8�ֽ�
	CAN_TxHeadeType.IDE = CAN_ID_STD;			//��׼֡
	CAN_TxHeadeType.RTR = CAN_RTR_DATA;		//����֡
}

