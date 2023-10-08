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

#include "dji_motor.hpp"

using namespace djimtr;

uint8_t DjiMotor::djimtr_ins_cnt_ = 0;              //���ʵ�弼��
const uint8_t DjiMotor::djimtr_ins_cnt_max_ = 12;   //��· can �������������
const uint8_t DjiMotor::djimtr_offline_cnt_max_ = 100;   //���ʧ���������ֵ
static DjiMotor* djimtr_instance[DjiMotor::djimtr_ins_cnt_max_] = {NULL};   //���ڱ�������ʵ��
DjiMotor::DjiMotor(MotorCANConfig* config) : 
    can_instance_(&config->can_config), 
    heartbeat_(djimtr_offline_cnt_max_) {
  motor_type_ = config->motor_type;
  can_instance_.SetCANInstanceRxCallback(std::bind(&DjiMotor::GetCANRxMessage, this));
  DivideintoGroup(config);
  stateinfo_.init_flag_ = kMotorInit;
  djimtr_instance[DjiMotor::djimtr_ins_cnt_++] = this;
}
/**
 * @brief Ϊ�󽮵��ע������͵�ɵ�δ��¼�ڰ��� can ʵ�������� can ����
 *        ���ҽ�����Ӧ�����������д󽮵��ע��Ż�ִ�з��Ͷ�Ӧ�İ�
 *        ������� id ��ϵ���£�
 *        can1: [0]:0x1FF,[1]:0x200,[2]:0x2FF
 *        can2: [3]:0x1FF,[4]:0x200,[5]:0x2FF
 *        �������ռ�djimtr��Ҳ��ö�ٶ��塣
 * @name  djimtr_CAN_txconfig[6] : ����ע������ò���
 *        djimtr_CAN_txgroup[6] : ע����������
 * @note  C610(rm2006)/C620(rm3508):0x1ff,0x200;
 *        GM6020:0x1ff,0x2ff
 *        ����(rx_id): GM6020: 0x204+id ; C610/C620: 0x200+id 
 */
static CANInstanceTxConfig djimtr_CAN_txconfig[kGroupSum] = {
  [kCAN1_0x1FF] = {.can_handle = &hcan1, .tx_id = 0x1ff},
  [kCAN1_0x200] = {.can_handle = &hcan1, .tx_id = 0x200},
  [kCAN1_0x2FF] = {.can_handle = &hcan1, .tx_id = 0x2ff},
  [kCAN2_0x1FF] = {.can_handle = &hcan2, .tx_id = 0x1ff},
  [kCAN2_0x200] = {.can_handle = &hcan2, .tx_id = 0x200},
  [kCAN2_0x2FF] = {.can_handle = &hcan2, .tx_id = 0x2ff},
};
static CANInstance djimtr_CAN_txgroup[kGroupSum] = {
  CANInstance(&djimtr_CAN_txconfig[kCAN1_0x1FF]),
  CANInstance(&djimtr_CAN_txconfig[kCAN1_0x200]),
  CANInstance(&djimtr_CAN_txconfig[kCAN1_0x2FF]),
  CANInstance(&djimtr_CAN_txconfig[kCAN2_0x1FF]),
  CANInstance(&djimtr_CAN_txconfig[kCAN2_0x200]),
  CANInstance(&djimtr_CAN_txconfig[kCAN2_0x2FF]),
};/**
 * @brief �����ġ����ҽ�����Ӧ�����������д󽮵��ע��Żᷢ�͡���Ӧ��־λ
 */
MotorGroupInit DjiMotor::group_flag_[kGroupSum] = {kGroupEmpty};

/**
 * @brief ����������ע��Ĵ󽮵����Ϊ��ִ�п��ƴ���
 * 
 */
