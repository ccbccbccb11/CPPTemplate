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
  * @todo 前馈接口
 */
#ifndef DJI_MOTOR_HPP
#define DJI_MOTOR_HPP
/* Includes -----------------------------------------------------------------*/
#include "utils.h"
#include "motor_def.hpp"

using namespace motordef;
using namespace heartbeat;

namespace djimtr {
//初始化枚举
typedef enum {
	kGroupEmpty = 0,
	kGroupOK,
} MotorGroupInit;
//分组信息
typedef enum {
	kCAN1_0x1FF = 0,
	kCAN1_0x200 = 1,
	kCAN1_0x2FF = 2,
	kCAN2_0x1FF = 3,
	kCAN2_0x200 = 4,
	kCAN2_0x2FF = 5,
  kGroupSum = 6,
} MotorGroup;
/* 大疆电机消息类 */
class RxInfo {
public:
  /*报文读取*/
  uint16_t  angle_;					//0~8191 	//转子编码
  int16_t   speed_;					//RPM    	//转子转速
  int16_t 	current_;				//mA			//电机电流
  uint8_t		temperature_;		//°C    	//电机温度
  int16_t 	torque_;				//N·m			//转轴转矩
  /*用户计算*/
  uint16_t	angle_prev_;	
  int16_t		angle_offset_;	//偏执
  int32_t		angle_sum_;			//+-(2^31-1) 上电开始到现在的角度和
};
/* 大疆电机 id 类 */
class IDInfo {
public:
  uint32_t  tx_id_;   //发送id
  uint32_t  rx_id_;   //接收id
  uint8_t   txbuff_index_;  //发送数组位置
  MotorGroup  group_;  //发送组别
};
/* 实体类 */
class DjiMotor {
private:
  /* data */
  RxInfo rxinfo_;
  IDInfo id_info_;
  StateInfo stateinfo_;
  Control   controler_;
  MotorType motor_type_;
  CANInstance can_instance_;
  HeartBeat heartbeat_;
  ExternalControl external_control_;
public:
	static uint8_t djimtr_ins_cnt_;			// 大疆电机实体计数
	static const uint8_t djimtr_ins_cnt_max_;			// 大疆电机实体计数
	static const uint8_t djimtr_offline_cnt_max_;			// 大疆电机实体计数
  static MotorGroupInit group_enable_flag_[kGroupSum]; //分组使能标志
  /**
   * @brief *************** 构造函数 ******************************
   */
  DjiMotor() { stateinfo_.init_flag_ = kMotorEmpty; }
  DjiMotor(MotorInitConfig* config);
  /**
   * @brief *************** 分组函数 ******************************
   */
  void DivideintoGroup(MotorInitConfig* config) { 
    id_info_.rx_id_ = config->can_config.rx_id;
    switch (config->motor_type) {
      case kRM2006:
      case kRM3508:
				if ((id_info_.rx_id_ - 0x201U) < 4) { 
					id_info_.tx_id_ = 0x200; 
          if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x200;
          else id_info_.group_ = kCAN2_0x200;
				} else { 
					id_info_.tx_id_ = 0x1FF; 
          if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x1FF;
          else id_info_.group_ = kCAN2_0x1FF;
				}
        id_info_.txbuff_index_ = (id_info_.rx_id_ - 0x201U) % 4;
        break;
      case kGM6020:
				if ((id_info_.rx_id_ - 0x201U) < 4) { 
					id_info_.tx_id_ = 0x1FF; 
          if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x1FF;
          else id_info_.group_ = kCAN2_0x1FF;
				} else { 
					id_info_.tx_id_ = 0x2FF; 
          if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x2FF;
          else id_info_.group_ = kCAN2_0x2FF;
				}
        id_info_.txbuff_index_ = (id_info_.rx_id_ - 0x205U) % 4;
        break;
      
      default:
        while (1)
          continue;
    }
    group_enable_flag_[id_info_.group_] = kGroupOK;
  }
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
  void GetCANRxMessage(void) {
    int16_t err;
    if (can_instance_.GetRxBuff() == nullptr)
      return;
    if (stateinfo_.init_flag_ == kMotorEmpty)
      return;
    rxinfo_.angle_ = CANGetAngle(can_instance_.GetRxBuff());
    rxinfo_.speed_ = CANGetSpeed(can_instance_.GetRxBuff());
    rxinfo_.current_ = CANGetCurrent(can_instance_.GetRxBuff());
    rxinfo_.torque_ = CANGetTorque(can_instance_.GetRxBuff());
    rxinfo_.temperature_ = CANGetTemperature(can_instance_.GetRxBuff());
    if (!rxinfo_.angle_prev_ && !rxinfo_.angle_sum_) {
      err = 0;
    } else {
      err = rxinfo_.angle_ - rxinfo_.angle_prev_;
    }
    if (math::Abs(err) > 4095) {
      if (err >= 0) {
        rxinfo_.angle_sum_ += -8191 + err;
      } else {
        rxinfo_.angle_sum_ += 8191 + err;
      }
    } else {
      rxinfo_.angle_sum_ += err;
    }
    rxinfo_.angle_prev_ = rxinfo_.angle_;		
    stateinfo_.offline_cnt_ = 0;
  }
  /**
   * @brief *************** 控制任务 ******************************
   */
  static void ControlTask(void);
  void SetPIDLoop(PIDLoop loop) {
    controler_.loop_ = loop;
  }
  PIDLoop GetPIDLoop(void) {
    return controler_.loop_;
  }
  void SetPIDTarget(float tar) {
    controler_.tar_ = tar;
  }
  float GetPIDTarget(void) {
    return controler_.tar_;
  }
  MotorGroup GetGroupIndex(void) {
    return id_info_.group_;
  }
  uint8_t GetTxBuffIndex(void) {
    return id_info_.txbuff_index_;
  }
  float SpeedLoop(void) {
    if (controler_.speed_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float speed;
    float output;
    if (external_control_.speed_measure_flag == kMotorInit)
      speed = *external_control_.speed_measure_;
    else
      speed = GetSpeed();
    output = controler_.speed_.SingleLoop(tar, speed);
    if (external_control_.speed_feedforward_flag_ == kMotorInit)
      output += *external_control_.speed_feedforward_;
    return output;
  }
  float AngleLoop(void) {
    if (controler_.angleout_.GetInitFlag() == kPIDEmpty || controler_.anglein_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float angle;
    float speed;
    float output;
    if (external_control_.angle_outer_measure_flag == kMotorInit)
      angle = *external_control_.angle_outer_measure_;
    else
      angle = GetAngle();
    if (external_control_.angle_inner_measure_flag == kMotorInit)
      speed = *external_control_.speed_measure_;
    else
      speed = GetSpeed();
    output = controler_.angleout_.SingleLoop(tar, angle, 8192);
    if (external_control_.angle_outer_feedforward_flag_ == kMotorInit)
      output += *external_control_.angle_outer_feedforward_;
    output = controler_.anglein_.SingleLoop(output, speed);
    if (external_control_.angle_inner_feedforward_flag_ == kMotorInit)
      output += *external_control_.angle_inner_feedforward_;
    return output;
  }
  float PositLoop(void) {
    if (controler_.positout_.GetInitFlag() == kPIDEmpty || controler_.positin_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float posit;
    float speed;
    float output;
    if (external_control_.posit_outer_measure_flag == kMotorInit)
      posit = *external_control_.posit_outer_measure_;
    else
      posit = GetPosit();
    if (external_control_.posit_inner_measure_flag == kMotorInit)
      speed = *external_control_.posit_inner_measure_;
    else
      speed = GetSpeed();
    output = controler_.positout_.SingleLoop(tar, posit);
    if (external_control_.posit_outer_feedforward_flag_ == kMotorInit)
      output += *external_control_.posit_outer_feedforward_;
    output = controler_.positin_.SingleLoop(output, speed);
    if (external_control_.posit_inner_feedforward_flag_ == kMotorInit)
      output += *external_control_.posit_inner_feedforward_;
    return output;
  }
  float CurrentLoop(void) {
    if (controler_.current_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float current;
    float output;
    if (external_control_.current_measure_flag == kMotorInit)
      current = *external_control_.current_measure_;
    else
      current = GetCurrent();
    output = controler_.current_.SingleLoop(tar, current);
    if (external_control_.current_feedforward_flag_ == kMotorInit)
      output += *external_control_.current_feedforward_;
    return output;
  }
	// 输出角度
  uint16_t GetAngle(void) {
    return rxinfo_.angle_;
  }
	// 输出角度
  int GetPosit(void) {
    return rxinfo_.angle_sum_;
  }
  // 输出速度
  int16_t GetSpeed(void) {
    return rxinfo_.speed_;
  }
  // 输出电流
  int16_t GetCurrent(void) {
    return rxinfo_.current_;
  }
  // 输出转矩
  int16_t GetTorque(void) {
    return rxinfo_.torque_;
  }
  // 输出温度
  uint8_t GetTempera(void) {
    return rxinfo_.temperature_;
  }
  PidInit GetSpeedPIDInit(void) {
    return controler_.speed_.GetInitFlag();
  }
  PidInit GetAnglePIDInit(void) {
    if(controler_.anglein_.GetInitFlag() == kPIDInit && controler_.angleout_.GetInitFlag() == kPIDInit)
      return kPIDInit;
    else 
      return kPIDEmpty;
  }
  PidInit GetPositPIDInit(void) {
    if(controler_.positin_.GetInitFlag() == kPIDInit && controler_.positout_.GetInitFlag() == kPIDInit)
      return kPIDInit;
    else 
      return kPIDEmpty;
  }
  PidInit GetCurrentPIDInit(void) {
    return controler_.current_.GetInitFlag();
  }
};
};
#endif // DJI_MOTOR_HPP