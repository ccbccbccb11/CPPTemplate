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
 /**
  * @todo 
 */
#ifndef LK_MOTOR_HPP
#define LK_MOTOR_HPP
/* Includes -----------------------------------------------------------------*/
#include "utils.h"
#include "motor.hpp"
#include "motor_def.hpp"

using namespace motor;
using namespace motordef;
using namespace heartbeat;

namespace lkmtr {
class LkMotor : public Motor {
private:
  /* data */
public:
	static uint8_t lkmtr_ins_cnt_;			// 翎控电机实体计数
	static const uint8_t lkmtr_ins_cnt_max_;			// 翎控电机实体计数最大值
	static const uint8_t lkmtr_offline_cnt_max_;			// 翎控电机离线计数
  static MotorGroupInit group_enable_flag_[2]; //分组使能标志
  /**
   * @brief *************** 构造函数 ******************************
   */
  LkMotor() {}
  LkMotor(MotorInitConfig* config) : Motor(config){
    LkMotorInit(config);
  }
  // 初始化函数
  void LkMotorInit(MotorInitConfig* config);
  /**
   * @brief *************** 报文读取 ******************************
   */
	// can 中读取角度
  uint16_t CANGetAngle(uint8_t* rxbuff) {
    uint16_t angle;
    angle = (uint16_t)(rxbuff[7] << 8| rxbuff[6]);
    return angle;
  }
  // can 中读取速度
  int16_t CANGetSpeed(uint8_t* rxbuff) {
    int16_t speed;
    speed = (int16_t)(rxbuff[5] << 8| rxbuff[4]);
    return speed;
  }
  // can 中读取电流
  int16_t CANGetCurrent(uint8_t* rxbuff) {
    int16_t current;
    current = (int16_t)(rxbuff[3] << 8 | rxbuff[2]);
    return current;
  }
  // can 中读取温度
  uint8_t CANGetTemperature(uint8_t* rxbuff) {
    uint8_t temperature;
    temperature = rxbuff[1];
    return temperature;
  }
  //读取 LK 电机 can 报文
  static void GetCANRxMessage(CANInstance* can_ins);
  /**
   * @brief *************** 控制函数 ******************************
   */
  // 大疆电机总控，包括 pid 计算和 can 发送
  static void ControlTask(void);
};
}
#endif /* LK_MOTOR_HPP */