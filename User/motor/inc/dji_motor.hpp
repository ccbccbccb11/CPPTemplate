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
/* 实体类 */
class DjiMotor : public Motor {
private:
  /* data */
public:
	static uint8_t djimtr_ins_cnt_;			// 大疆电机实体计数
	static const uint8_t djimtr_ins_cnt_max_;			// 大疆电机实体计数最大值
	static const uint8_t djimtr_offline_cnt_max_;			// 大疆电机离线计数
  static MotorGroupInit group_enable_flag_[kGroupSum]; //分组使能标志
  /**
   * @brief *************** 构造函数 ******************************
   */
  DjiMotor() {}
  DjiMotor(MotorInitConfig* config) : Motor(config) {
    DjiMotorInit(config);
  }
  // 初始化函数
  void DjiMotorInit(MotorInitConfig* config);
  /**
   * @brief *************** 报文读取 ******************************
   */
	// can 中读取角度
  uint16_t CANGetAngle(uint8_t* rxbuff) {
    uint16_t angle;
    angle = (uint16_t)(rxbuff[0] << 8| rxbuff[1]);
    return angle;
  }
  // can 中读取速度
  int16_t CANGetSpeed(uint8_t* rxbuff) {
    int16_t speed;
    speed = (int16_t)(rxbuff[2] << 8| rxbuff[3]);
    return speed;
  }
  // can 中读取电流
  int16_t CANGetCurrent(uint8_t* rxbuff) {
    int16_t current;
    current = (int16_t)(rxbuff[4] << 8 | rxbuff[5]);
    return current;
  }
  // can 中读取转矩
  int16_t CANGetTorque(uint8_t* rxbuff) {
    int16_t torque;
    torque = (int16_t)(rxbuff[4] << 8 | rxbuff[5]);
    return torque;
  }
  // can 中读取温度
  uint8_t CANGetTemperature(uint8_t* rxbuff) {
    uint8_t temperature;
    temperature = rxbuff[6];
    return temperature;
  }
  //读取 RM 电机 can 报文
    // planA static：已实现，通过函数指针使 canins 链接到此函数，
    //               再通过父指针找到 djimtr
  static void GetCANRxMessage(CANInstance* can_ins);
    // planB 成员函数：未实现。函数指针不可用，因为成员函数有一隐藏
    //                入口参数 this ，底层不包含此头文件无法发现 this
    //                的类型。尝试过使用 std::bind 未果。
    // planC 中间文件it.c：未尝试。即创建一中间文件 it.c ，将底层和顶层
    //                    都包进去。类似于现在的 uart_protocol
    // planD 纯虚函数：下一步考虑，在 can 声明一纯虚函数，要求所有子类都必须予以实现
    //                这样基类也可以调用子类的函数
  /**
   * @brief *************** 控制函数 ******************************
   */
  // 大疆电机总控，包括 pid 计算和 can 发送
  static void ControlTask(void);
};
};
#endif // DJI_MOTOR_HPP