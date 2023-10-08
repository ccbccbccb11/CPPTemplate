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

uint8_t DjiMotor::djimtr_ins_cnt_ = 0;              //电机实体技术
const uint8_t DjiMotor::djimtr_ins_cnt_max_ = 12;   //两路 can 允许最大点击总数
const uint8_t DjiMotor::djimtr_offline_cnt_max_ = 100;   //电机失联计数最大值
static DjiMotor* djimtr_instance[DjiMotor::djimtr_ins_cnt_max_] = {NULL};   //用于遍历所有实体
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
 * @brief 为大疆电机注册六组偷渡的未记录在案的 can 实例仅用于 can 发送
 *        当且仅当对应的任意组下有大疆电机注册才会执行发送对应的包
 *        组别与电机 id 关系如下：
 *        can1: [0]:0x1FF,[1]:0x200,[2]:0x2FF
 *        can2: [3]:0x1FF,[4]:0x200,[5]:0x2FF
 *        在命名空间djimtr中也有枚举定义。
 * @name  djimtr_CAN_txconfig[6] : 用于注册的配置参数
 *        djimtr_CAN_txgroup[6] : 注册六个分组
 * @note  C610(rm2006)/C620(rm3508):0x1ff,0x200;
 *        GM6020:0x1ff,0x2ff
 *        反馈(rx_id): GM6020: 0x204+id ; C610/C620: 0x200+id 
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
 * @brief 上述的“当且仅当对应的任意组下有大疆电机注册才会发送”对应标志位
 */
MotorGroupInit DjiMotor::group_flag_[kGroupSum] = {kGroupEmpty};

/**
 * @brief 遍历所有已注册的大疆电机，为其执行控制代码
 * 
 */
