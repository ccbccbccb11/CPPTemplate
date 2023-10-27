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
public:
	static const uint8_t lkmtr_offline_cnt_max_;			// Lkmtr control motor off-line counting
  static MotorGroupInit group_enable_flag_[2];      // Group enable flag
  /**
   * @brief *************** constructor ******************************
   */
  LkMotor() {}
  LkMotor(MotorInitConfig* config) : Motor(config){
    LkMotorInit(config);
  }
  // initialization function
  void LkMotorInit(MotorInitConfig* config);
  /**
   * @brief *************** CAN message reading ******************************
   */
	// Reading Angle
  uint16_t CANGetAngle(uint8_t* rxbuff) {
    uint16_t angle;
    angle = (uint16_t)(rxbuff[7] << 8| rxbuff[6]);
    return angle;
  }
  // Reading Speed
  int16_t CANGetSpeed(uint8_t* rxbuff) {
    int16_t speed;
    speed = (int16_t)(rxbuff[5] << 8| rxbuff[4]);
    return speed;
  }
  // Reading Current
  int16_t CANGetCurrent(uint8_t* rxbuff) {
    int16_t current;
    current = (int16_t)(rxbuff[3] << 8 | rxbuff[2]);
    return current;
  }
  // Reading Temperature
  uint8_t CANGetTemperature(uint8_t* rxbuff) {
    uint8_t temperature;
    temperature = rxbuff[1];
    return temperature;
  }
  // read CAN message
  static void GetCANRxMessage(CANInstance* can_ins);
  /**
   * @brief *************** Control function ******************************
   */
  // LKmtr general control
  static void ControlTask(void);
  void PIDCal(void);
};
}
#endif /* LK_MOTOR_HPP */