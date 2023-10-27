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
#ifndef MOTOR_HPP
#define MOTOR_HPP
/* Includes -----------------------------------------------------------------*/
#include "utils.h"
#include "motor_def.hpp"

using namespace motordef;
using namespace heartbeat;

namespace motor {
/* Motor message class */
class RxInfo {
public:
  /* Message reading */
  uint8_t		temperature_;	
  int16_t 	current_;			
  int16_t   speed_;				
  uint16_t  angle_;				
  /* User computing */
  uint16_t	angle_prev_;	  // last angle
  int16_t		angle_offset_;	
  int32_t		angle_sum_;			//  +-(2^31-1)
};
/* Motor id class */
class IDInfo {
public:
  uint32_t  tx_id_;         
  uint32_t  rx_id_;         
  uint8_t   txbuff_index_;  // Send array index
  MtrGroup  group_;         // Sending group
};
/** CAN node
 *  @todo 
 */
class CANNode {
private:
  /* data */
public:
  CANNode() {}
};
/* Motor base class */
class Motor {
protected:
  /* data */
  RxInfo            rxinfo_;           // CAN rx data
  IDInfo            id_info_;                    
  StateInfo         stateinfo_;               
  MotorType         motor_type_;              
  CANInstance*      can_instance_;         
  HeartBeat*        heartbeat_;              
  ExternalControl*  external_control_; // peripheral control unit, including feedforward algorithm
public:
  Control   controler_;

  /**
   * @brief *************** constructor ******************************
   */
  Motor() {}
  Motor(MotorInitConfig* config) {
    MotorInit(config);
  }

  // initialization function
  void MotorInit(MotorInitConfig* config);
  
  // ID init
  void CANInfoInit(MotorInitConfig* config) {
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
      case kLkMtr:
        id_info_.rx_id_ = config->can_config.rx_id;
        id_info_.tx_id_ = 0x280;
        id_info_.txbuff_index_ = ((id_info_.rx_id_ - 0x141U) % 4)*2;
        break;
      
      default:
        while (1)
          stateinfo_.work_state_ = kMotorTypeErr;
    }
  }

	// Return motor CAN receive id
  uint32_t GetRxID(void) { return id_info_.rx_id_; }

  /**
   * @brief *************** return motor info ******************************
   */
	// Return motor angle
  uint16_t GetAngle(void) { return rxinfo_.angle_; }

	// Return motor posit
  int GetPosit(void) { return rxinfo_.angle_sum_; }

	// Return motor speed
  int16_t GetSpeed(void) { return rxinfo_.speed_; }

	// Return motor speed
  int16_t GetCurrent(void) { return rxinfo_.current_; }

	// Return motor temperature
  uint8_t GetTemperature(void) { return rxinfo_.temperature_; }

  /**
   * @brief *************** control function ******************************
   */
  // Change control loop
  void SetPIDLoop(PIDLoop loop) { controler_.loop_ = loop; }

  // Get the current control loop
  PIDLoop GetPIDLoop(void) { return controler_.loop_; }

  // Set the pid target value, and only this one target value and modify the channel
  void SetPIDTarget(float tar) { controler_.tar_ = tar; }

  // Set the direct out
  void SetDirectOut(float out) { controler_.dct_out_ = out; }
  
  // Get the direct out
  float GetDirectOut(void) { return controler_.dct_out_; }

  // Reset the target value
  void ResetTarget(void) { controler_.tar_ = 0; }

  // Returns the current target value
  float GetPIDTarget(void) { return controler_.tar_; }

  // Return group 
  MtrGroup GetGroupIndex(void) { return id_info_.group_; }

  // Return txbuff index 
  uint8_t GetTxBuffIndex(void) { return id_info_.txbuff_index_; }

  // Speed loop
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

  // Angle Loop
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

  // Posit Loop
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

  // Current Loop
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
   * @brief According to the speed and current to determine the stall
   * 
   * @param speed 
   * @param current 
   * @return uint8_t 
   */
  uint8_t StallCheckSpeed(int16_t speed, int16_t current) {
    uint8_t rslt;
    int16_t speed_ = GetSpeed();
    int16_t current_ = GetCurrent();
    if (Abs(speed_) < speed && Abs(current_) > current)
      rslt = 1;
    else
      rslt = 0;
    return rslt;
  }

  /**
   * @brief This is an empty function !!!!
   * @brief According to the speed and integra to determine the stall
   * @note  The method of the loop that needs to be detected is called :
   *        djimtr.controler.loop.StallCheck(100)
   * @param 
   */
  void StallCheckIntegra(void) {}

  /**
   * @brief According to the speed and angle to determine the stall
   * 
   * @param tar_angle 
   * @param diff_angle 
   * @param speed 
   * @return uint8_t 
   */
  uint8_t StallCheckAngle(int16_t tar_angle, int16_t diff_angle, int16_t speed) {
    uint8_t rslt;
    int16_t speed_ = GetSpeed();
    int16_t angle = GetAngle();
    if (Abs(speed_) < speed && DistanceBool(angle, tar_angle, diff_angle))
      rslt = 1;
    else
      rslt = 0;
    return rslt;
  }

  /**
   * @brief According to the speed and posit to determine the stall
   * 
   * @param tar_posit 
   * @param diff_posit 
   * @param speed 
   * @return uint8_t 
   */
  uint8_t StallCheckPosit(int tar_posit, int diff_posit, int16_t speed) {
    uint8_t rslt;
    int16_t speed_ = GetSpeed();
    int posit = GetPosit();
    if (Abs(speed_) < speed && DistanceBool(posit, tar_posit, diff_posit))
      rslt = 1;
    else
      rslt = 0;
    return rslt;
  }
  
  // pid instance initialization
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

  // Return speed loop initialization information
  PidInit GetSpeedPIDInit(void) { return controler_.speed_.GetInitFlag(); }

  // Return Angle ring initialization information
  PidInit GetAnglePIDInit(void) {
    if (controler_.anglein_.GetInitFlag() == kPIDInit && 
        controler_.angleout_.GetInitFlag() == kPIDInit)
      return kPIDInit;
    else 
      return kPIDEmpty;
  }

  // Return position ring initialization information
  PidInit GetPositPIDInit(void) {
    if (controler_.positin_.GetInitFlag() == kPIDInit && 
        controler_.positout_.GetInitFlag() == kPIDInit)
      return kPIDInit;
    else 
      return kPIDEmpty;
  }

  // Output current loop initialization information
  PidInit GetCurrentPIDInit(void) { return controler_.current_.GetInitFlag(); }
  
  // Heartbeat update
  void StateUpdate(void) {
    stateinfo_.work_state_ = kMotorOnline;
    if (heartbeat_->GetState() == kOffline)
      stateinfo_.work_state_ = kMotorOffline;
  }
};
};
#endif /* MOTOR_HPP */