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
#ifndef DJI_MOTOR_HPP
#define DJI_MOTOR_HPP
/* Includes -----------------------------------------------------------------*/
#include "utils.h"
#include "motor.hpp"
#include "motor_def.hpp"

using namespace motor;
using namespace motordef;
using namespace heartbeat;

namespace djimtr {
class DjiMotor : public Motor {
public:
	static const uint8_t djimtr_offline_cnt_max_;			    // Djimtr control motor off-line counting
  static MotorGroupInit group_enable_flag_[kGroupSum];  // Group enable flag
  /**
   * @brief *************** constructor ******************************
   */
  DjiMotor() {}
  DjiMotor(MotorInitConfig* config) : Motor(config) {
    DjiMotorInit(config);
  }
  // initialization function
  void DjiMotorInit(MotorInitConfig* config);
  
  /**
   * @brief *************** CAN message reading ******************************
   */
	// Reading Angle
  uint16_t CANGetAngle(uint8_t* rxbuff) {
    uint16_t angle;
    angle = (uint16_t)(rxbuff[0] << 8| rxbuff[1]);
    return angle;
  }

  // Reading Speed
  int16_t CANGetSpeed(uint8_t* rxbuff) {
    int16_t speed;
    speed = (int16_t)(rxbuff[2] << 8| rxbuff[3]);
    return speed;
  }

  // Reading Current
  int16_t CANGetCurrent(uint8_t* rxbuff) {
    int16_t current;
    current = (int16_t)(rxbuff[4] << 8 | rxbuff[5]);
    return current;
  }

  // Reading Temperature
  uint8_t CANGetTemperature(uint8_t* rxbuff) {
    uint8_t temperature;
    temperature = rxbuff[6];
    return temperature;
  }

  // read CAN message
    // planA static：已实现，通过函数指针使 canins 链接到此函数，
    //               再通过map找到 djimtr
  static void GetCANRxMessage(CANInstance* can_ins);
    // planB 成员函数：未实现。函数指针不可用，因为成员函数有一隐藏
    //                入口参数 this ，底层不包含此头文件无法发现 this
    //                的类型。尝试过使用 std::bind 未果。
    // planC 中间文件it.c：未尝试。即创建一中间文件 it.c ，将底层和顶层
    //                    都包进去。类似于现在的 uart_protocol
    // planD 纯虚函数：下一步考虑，在 can 声明一纯虚函数，要求所有子类都必须予以实现
    //                这样基类也可以调用子类的函数 // 但是偷渡时如何实现？
  /**
   * @brief *************** Control function ******************************
   */
  // Djimtr general control
  static void ControlTask(void);
  void PIDCal(void);
};
};
#endif /* DJI_MOTOR_HPP */