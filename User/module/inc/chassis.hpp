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
#ifndef CHASSIS_HPP
#define CHASSIS_HPP
/**
 * @brief *************** include files ***************************
 */
#include "dji_motor.hpp"
/**
 * @brief *************** namespace *******************************
 */
namespace chassis {
/**
 * @brief *************** macro definition ************************
 */
typedef enum {
  kLeftFront = 0x201,
  kRightFront = 0x202,
  kLeftBack = 0x203,
  kRightBack = 0x204,
} ChassisMotor;
/**
 * @brief *************** class declaration ***********************
 */
class Chassis {
private:
  /**
   * @brief *************** private variables **********************
   */
  // Map from motor enum to motor object
  std::map<ChassisMotor, motor::DjiMotor*> motor_map_;
  /**
   * @brief *************** private functions **********************
   */
public:
  /**
   * @brief *************** public variables ***********************
   */
  /**
   * @brief *************** constructor ******************************
   */
  Chassis() { Register(); }
  
  /**
   * @brief *************** public functions **********************
   */
  void Register();

  void GetFrontSpeed(void) {}

  void GetRightSpeed(void) {}

  void GetCycleSpeed(void) {}

  void SetFrontSpeed(float) {}

  void SetRightSpeed(float) {}

  void SetCycleSpeed(float) {}
};
}
#endif /* CHASSIS_HPP */