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
#include "motor_def.hpp"

namespace motor {
/* Motor message class */
class RxInfo {
public:
  /* Constract */
  RxInfo() {
    temperature_ = 0;
    current_ = 0;
    speed_ = 0;
    angle_ = 0;
    angle_prev_ = 0;
    angle_offset_ = 0;
    angle_sum_ = 0;
  }
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
  /* Constract */
  IDInfo() {
    tx_id_ = 0;
    rx_id_ = 0;
    txbuff_index_ = 0;
    group_ = motordef::kCAN1_0x1FF;
  }
  uint32_t  tx_id_;         
  uint32_t  rx_id_;         
  uint8_t   txbuff_index_;  // Send array index
  motordef::MtrGroup  group_;         // Sending group
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
  RxInfo                  rxinfo_;           // CAN rx data
  IDInfo                  id_info_;                    
  motordef::StateInfo     stateinfo_;               
  motordef::MotorType     motor_type_;              
  CANInstance             can_instance_;         
  heartbeat::HeartBeat    heartbeat_;  
  uint8_t                 encoder_bits_;      // Encoder bits           
public:          
  motordef::Control       controler_;   
  motordef::ExternalInfo  external_info_;   // peripheral control unit, including feedforward algorithm

  /**
   * @brief *************** constructor ******************************
   */
  Motor() {}
  Motor(motordef::MotorInitConfig* config) {
    MotorInit(config);
  }

  // initialization function
  void MotorInit(motordef::MotorInitConfig* config);
  
  // ID init
  void BaseInfoInit(motordef::MotorInitConfig* config);

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

  // Return motor state
  motordef::StateInfo GetState(void) { return stateinfo_; }

  // Return motor type  
  motordef::MotorType GetMotorType(void) { return motor_type_; }

  // Return motor PID loop
  motordef::PIDCtrlMode GetLoop(void) { return controler_.loop_; }

  // Return motor encoder bits
  uint8_t GetEncoderBits(void) { return encoder_bits_; }

  // Return motor encoder max value
  int GetEncoderMax(void) { return encoder_bits_ == 14 ? 16384 : encoder_bits_ == 16 ? 65536 : 8192; }

  /**
   * @brief *************** control function ******************************
   */
  // Change control loop
  void SetPIDLoop(motordef::PIDCtrlMode loop) { controler_.loop_ = loop; }

  // Get the current control loop
  motordef::PIDCtrlMode GetPIDLoop(void) { return controler_.loop_; }

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
  motordef::MtrGroup GetGroupIndex(void) { return id_info_.group_; }

  // Return txbuff index 
  uint8_t GetTxBuffIndex(void) { return id_info_.txbuff_index_; }

  // Speed loop
  float SpeedLoop(void);

  // Angle Loop
  float AngleLoop(void);

  // Posit Loop
  float PositLoop(void);

  // Current Loop
  float CurrentLoop(void);

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
    if (math::Abs(speed_) < speed && math::Abs(current_) > current)
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
   * @todo This function is not implemented
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
    if (math::Abs(speed_) < speed && math::DistanceBool(angle, tar_angle, diff_angle))
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
    if (math::Abs(speed_) < speed && math::DistanceBool(posit, tar_posit, diff_posit))
      rslt = 1;
    else
      rslt = 0;
    return rslt;
  }
  
  // pid instance initialization
  void PIDInit(motordef::PIDCtrlMode loop, motordef::MotorInitConfig* config);

  // Return speed loop initialization information
  pid::PidInit GetSpeedPIDInit(void) { return controler_.PID_map_[motordef::kSpeed]->GetInitFlag(); }

  // Return Angle ring initialization information
  pid::PidInit GetAnglePIDInit(void) {
    if (controler_.PID_map_[motordef::kAnglein]->GetInitFlag() == pid::kPIDInit && 
        controler_.PID_map_[motordef::kAngleout]->GetInitFlag() == pid::kPIDInit)
      return pid::kPIDInit;
    else 
      return pid::kPIDEmpty;
  }

  // Return position ring initialization information
  pid::PidInit GetPositPIDInit(void) {
    if (controler_.PID_map_[motordef::kPositin]->GetInitFlag() == pid::kPIDInit && 
        controler_.PID_map_[motordef::kPositout]->GetInitFlag() == pid::kPIDInit)
      return pid::kPIDInit;
    else 
      return pid::kPIDEmpty;
  }

  // Output current loop initialization information
  pid::PidInit GetCurrentPIDInit(void) { return controler_.PID_map_[motordef::kCurrent]->GetInitFlag(); }
  
  // Heartbeat update
  void StateUpdate(void) {
    stateinfo_.work_state_ = motordef::kMotorOnline;
    if (heartbeat_.GetState() == heartbeat::kOffline)
      stateinfo_.work_state_ = motordef::kMotorOffline;
  }
};
};
#endif /* MOTOR_HPP */