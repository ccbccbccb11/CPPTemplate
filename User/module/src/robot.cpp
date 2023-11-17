/**
 * @file robot.cpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-05
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include "robot.hpp"

/**
 * @brief robot
 */
namespace robot {
/**
 * @brief *************** static variables **********************
 * 
 */
static uint8_t kInitFlag = 0;  // Robot initialization flag
/**
 * @brief *************** public functions **********************
 * 
 */
// Robot register
void Robot::Register() {
  // Robot initialization flag
  if (kInitFlag == 1) {
    // Robot redefine!!!
    while (true)
      continue;
  }
  
  // Manipulator register
  manipulator_ = std::make_shared<manipulator::Manipulator>();
  // Chassis register
  // chassis_ = std::make_shared<chassis::Chassis>();
  // Gimbal register
  // gimbal_ = std::make_shared<gimbal::Gimbal>();
  
  // Robot initialization flag
  kInitFlag = 1;

  // // Check initialization
  // if (manipulator_ == NULL || chassis_ == NULL || gimbal_ == NULL) {
  //   // Robot initialization failed!!!
  //   while (true)
  //     continue;
  // }
}
// Robot control task
void Robot::ControlTask() {
  // Manipulator control task
  manipulator_->ControlTask();
  // Chassis control task
  // chassis_->ControlTask();
  // Gimbal control task
  // gimbal_->ControlTask();
}
}  // namespace robot