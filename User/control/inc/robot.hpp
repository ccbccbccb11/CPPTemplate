/**
 * @file robot.hpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-05
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#ifndef ROBOT_HPP
#define ROBOT_HPP
/**
 * @brief *************** include files ***************************
 * 
 */
#include "manipulator_motor.hpp"
#include "chassis_motor.hpp"
#include "gimbal_motor.hpp"
/**
 * @brief *************** namespace robot *************************
 * 
 */
namespace robot {
/**
 * @brief *************** macro definition ************************
 */
/**
 * @brief class Robot declaration
 * 
 */
class Robot {
private:
  /**
   * @brief *************** private variables **********************
   */
  // Manipulator shared pointer
  std::shared_ptr<manipulator::Manipulator> manipulator_;
  // Chassis shared pointer
  std::shared_ptr<chassis::Chassis> chassis_;
  // Gimbal shared pointer
  std::shared_ptr<gimbal::Gimbal> gimbal_;
public:
  /**
   * @brief *************** public variables ***********************
   */
  /**
   * @brief *************** constructor ****************************
   */
  Robot() { Register(); }
  /**
   * @brief *************** public functions ***********************
   */
  // Robot register
  void Register();
};

}  // namespace robot
#endif  // ROBOT_HPP