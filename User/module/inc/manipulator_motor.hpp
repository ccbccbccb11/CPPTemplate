/**
 * @file manipulator.hpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-03
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#ifndef MANIPULATOR_MOTOR_HPP
#define MANIPULATOR_MOTOR_HPP

#include "lk_motor.hpp"
#include "robotics.h"

namespace manipulator {
/**
 * @brief *************** macro definition ************************
 */
// Manipulator motor CAN ID
typedef enum {
  kJoint0 = 0x141,
  kJoint1 = 0x142,
  kJoint2 = 0x143,
  kJoint3 = 0x144,
  kJoint4 = 0x201,
  kJoint5 = 0x202,
} ManipulatorMotorCANID;
// Manipulator target angle
typedef struct {
  float joint0;
  float joint1;
  float joint2;
  float joint3;
  float joint4;
  float joint5;
} ManipulatorTargetAngle;
}  // namespace manipulator
#endif  // MANIPULATOR_MOTOR_HPP