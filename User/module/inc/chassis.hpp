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
class Chassis {
private:
public:
  /**
   * @brief *************** constructor ******************************
   */
  Chassis() {}

  void Register() {}

  void GetFrontSpeed(void) {}

  void GetRightSpeed(void) {}

  void GetCycleSpeed(void) {}

  void SetFrontSpeed(float) {}

  void SetRightSpeed(float) {}

  void SetCycleSpeed(float) {}
};
}
#endif /* CHASSIS_HPP */