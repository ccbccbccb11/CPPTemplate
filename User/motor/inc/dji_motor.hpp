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
#include "motor_def.hpp"

using namespace motordef;
using namespace heartbeat;

namespace djimtr {
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
  RxInfo rxinfo_;                     // can 报文
  IDInfo id_info_;                    // id 信息
  StateInfo stateinfo_;               // 状态信息
  MotorType motor_type_;              // 电机类型
  CANInstance* can_instance_;         // can 实例
  HeartBeat* heartbeat_;              // 心跳实例
  ExternalControl* external_control_;  // 外部控制器
public:
	static uint8_t djimtr_ins_cnt_;			// 大疆电机实体计数
	static const uint8_t djimtr_ins_cnt_max_;			// 大疆电机实体计数最大值
	static const uint8_t djimtr_offline_cnt_max_;			// 大疆电机离线计数
  static MotorGroupInit group_enable_flag_[kGroupSum]; //分组使能标志
  Control   controler_;   // 控制器,其中数据已封装好无法直接访问，不想再重写一遍封装，故设置为 public
  /**
   * @brief *************** 构造函数 ******************************
   */
  DjiMotor() {}
  DjiMotor(MotorInitConfig* config) {
    DjiMotorInit(config);
  }
  // 初始化函数
  void DjiMotorInit(MotorInitConfig* config);
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
        id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x201U) % 4)*2;
        break;
      case kGM6020:
				if ((id_info_.rx_id_ - 0x205U) < 4) { 
					id_info_.tx_id_ = 0x1FF; 
          if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x1FF;
          else id_info_.group_ = kCAN2_0x1FF;
				} else { 
					id_info_.tx_id_ = 0x2FF; 
          if (config->can_config.can_handle == &hcan1) id_info_.group_ = kCAN1_0x2FF;
          else id_info_.group_ = kCAN2_0x2FF;
				}
        id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x205U) % 4)*2;
        break;
      
      default:
        while (1)
          stateinfo_.work_state_ = kMotorTypeErr;
    }
    group_enable_flag_[id_info_.group_] = kGroupOK;
  }
  uint32_t GetRxID(void) {
    return id_info_.rx_id_;
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
	// 输出角度
  uint16_t GetAngle(void) {
    return rxinfo_.angle_;
  }
	// 输出总角度
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
  //读取 RM 电机 can 报文
    // planA static：已实现，通过函数指针使 canins 链接到此函数，
    //               再通过父指针找到 djimtr
  static void GetCANRxMessage(CANInstance* can_ins);
    // planB 成员函数：未实现。函数指针不可用，因为成员函数有一隐藏
    //                入口参数 this ，底层不包含此头文件无法发现 this
    //                的类型。尝试过使用 std::bind 未果。
    // planC 中间文件it.c：未尝试。即创建一中间文件 it.c ，将底层和顶层
    //                    都包进去。类似于现在的 uart_protocol
  /**
   * @brief *************** 控制函数 ******************************
   */
  // 大疆电机总控，包括 pid 计算和 can 发送
  static void ControlTask(void);
  // 更改控制环路
  void SetPIDLoop(PIDLoop loop) {
    controler_.loop_ = loop;
  }
  // 获取当前控制环路
  PIDLoop GetPIDLoop(void) {
    return controler_.loop_;
  }
  // 设置 pid 目标值，有且仅有此一个目标值和修改通道
  void SetPIDTarget(float tar) {
    controler_.tar_ = tar;
  }
  // 重置目标值
  void ResetTarget(void) {
    controler_.tar_ = 0;
  }
  // 返回当前目标值
  float GetPIDTarget(void) {
    return controler_.tar_;
  }
  // 返回组别
  MotorGroup GetGroupIndex(void) {
    return id_info_.group_;
  }
  // 返回发送数组索引
  uint8_t GetTxBuffIndex(void) {
    return id_info_.txbuff_index_;
  }
  // 速度环
  float SpeedLoop(void) {
    if (controler_.speed_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float speed;
    float output;
    if (external_control_->speed_measure_flag == kMotorInit)
      speed = *external_control_->speed_measure_;
    else
      speed = GetSpeed();
    output = controler_.speed_.SingleLoop(tar, speed);
    if (external_control_->speed_feedforward_flag_ == kMotorInit)
      output += *external_control_->speed_feedforward_;
    return output;
  }
  // 角度环
  float AngleLoop(void) {
    if (controler_.angleout_.GetInitFlag() == kPIDEmpty || controler_.anglein_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float angle;
    float speed;
    float output;
    if (external_control_->angle_outer_measure_flag == kMotorInit)
      angle = *external_control_->angle_outer_measure_;
    else
      angle = GetAngle();
    if (external_control_->angle_inner_measure_flag == kMotorInit)
      speed = *external_control_->speed_measure_;
    else
      speed = GetSpeed();
    output = controler_.angleout_.SingleLoop(tar, angle, 8192);
    if (external_control_->angle_outer_feedforward_flag_ == kMotorInit)
      output += *external_control_->angle_outer_feedforward_;
    output = controler_.anglein_.SingleLoop(output, speed);
    if (external_control_->angle_inner_feedforward_flag_ == kMotorInit)
      output += *external_control_->angle_inner_feedforward_;
    return output;
  }
  // 位置环
  float PositLoop(void) {
    if (controler_.positout_.GetInitFlag() == kPIDEmpty || controler_.positin_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float posit;
    float speed;
    float output;
    if (external_control_->posit_outer_measure_flag == kMotorInit)
      posit = *external_control_->posit_outer_measure_;
    else
      posit = GetPosit();
    if (external_control_->posit_inner_measure_flag == kMotorInit)
      speed = *external_control_->posit_inner_measure_;
    else
      speed = GetSpeed();
    output = controler_.positout_.SingleLoop(tar, posit);
    if (external_control_->posit_outer_feedforward_flag_ == kMotorInit)
      output += *external_control_->posit_outer_feedforward_;
    output = controler_.positin_.SingleLoop(output, speed);
    if (external_control_->posit_inner_feedforward_flag_ == kMotorInit)
      output += *external_control_->posit_inner_feedforward_;
    return output;
  }
  // 电流环
  float CurrentLoop(void) {
    if (controler_.current_.GetInitFlag() == kPIDEmpty)
      return 0.f;
    float tar = controler_.tar_;
    float current;
    float output;
    if (external_control_->current_measure_flag == kMotorInit)
      current = *external_control_->current_measure_;
    else
      current = GetCurrent();
    output = controler_.current_.SingleLoop(tar, current);
    if (external_control_->current_feedforward_flag_ == kMotorInit)
      output += *external_control_->current_feedforward_;
    return output;
  }
  /**
   * @brief 堵转检测
   * @note  planA：对于位置环/角度环判断目标值是否到位&&速度是否很小
   *        planB：积分值长时间存在且速度不变
   *        planC: 大电流小速度
   */
  uint8_t StallCheckC(int16_t speed, int16_t current) {
    uint8_t rslt;
    int16_t speed_ = GetSpeed();
    int16_t current_ = GetCurrent();
    if (Abs(speed_) < speed && Abs(current_) > current)
      rslt = 1;
    else
      rslt = 0;
    return rslt;
  }
  // 封装到 pid 里了
  void StallCheckB(void) {
    /**
     * @brief 用的哪个环就直接在外部 djimtr.controler.loopname.StallCheck(100) 即可
     *        100即时间最大值
     */
  }
  // 角度环
  uint8_t StallCheckA(int16_t tar_angle, int16_t diff_angle, int16_t speed) {
    uint8_t rslt;
    int16_t speed_ = GetSpeed();
    int16_t angle = GetAngle();
    if (Abs(speed_) < speed && DistanceBool(angle, tar_angle, diff_angle))
      rslt = 1;
    else
      rslt = 0;
    return rslt;
  }
  // 位置环
  uint8_t StallCheckP(int tar_posit, int diff_posit, int16_t speed) {
    uint8_t rslt;
    int16_t speed_ = GetSpeed();
    int posit = GetPosit();
    if (Abs(speed_) < speed && DistanceBool(posit, tar_posit, diff_posit))
      rslt = 1;
    else
      rslt = 0;
    return rslt;
  }
  /**
   * @brief *************** pid 相关 ******************************
   * 
   */
  // pid 初始化
  void PIDInit(PIDLoop loop, MotorInitConfig* config) {
    switch (loop) {
      case kPositLoop:
        controler_.positin_ = PIDControler(&config->PID_posit_inner_config);
        controler_.positout_ = PIDControler(&config->PID_posit_outer_config);
        break;
      case kSpeedLoop:
        controler_.speed_ = PIDControler(&config->PID_speed_config);
        break;
      case kAngleLoop:
        controler_.anglein_ = PIDControler(&config->PID_angle_inner_config);
        controler_.angleout_ = PIDControler(&config->PID_angle_outer_config);
        break;
      case kCurrentLoop:
        controler_.current_ = PIDControler(&config->PID_current_config);
        break;
      default:
        while (1)
          continue;
        break;
    }
  }
  // 输出速度环初始化信息
  PidInit GetSpeedPIDInit(void) {
    return controler_.speed_.GetInitFlag();
  }
  // 输出角度环初始化信息
  PidInit GetAnglePIDInit(void) {
    if (controler_.anglein_.GetInitFlag() == kPIDInit && 
        controler_.angleout_.GetInitFlag() == kPIDInit)
      return kPIDInit;
    else 
      return kPIDEmpty;
  }
  // 输出位置环初始化信息
  PidInit GetPositPIDInit(void) {
    if (controler_.positin_.GetInitFlag() == kPIDInit && 
        controler_.positout_.GetInitFlag() == kPIDInit)
      return kPIDInit;
    else 
      return kPIDEmpty;
  }
  // 输出电流环初始化信息
  PidInit GetCurrentPIDInit(void) {
    return controler_.current_.GetInitFlag();
  }
};
};
#endif // DJI_MOTOR_HPP