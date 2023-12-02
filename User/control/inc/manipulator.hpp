/**
 * @file manipulator_dynamics.hpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-15
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#ifndef __MANIPULATOR_H__
#define __MANIPULATOR_H__
/**
 * @brief *************** include files ***************************
 */
#include "robotics.h"
#include <map>
/**
 * @brief *************** namespace robot *************************
 */
namespace robot {
/**
 * @brief *************** macro definition ************************
 */
// Robot command
/**
 * @brief *************** class declaration ************************
 */
class Manipulator {
private:
  /**
   * @brief *************** private variables **********************
   */
  std::shared_ptr<robotics::Serial_Link<6>> CCBArm; // Manipulator class
  // robotics::Serial_Link<6>* CCBArm; // Manipulator class
  /**
   * @brief *************** private functions **********************
   */
public:
  /**
   * @brief *************** public variables **********************
   */
  /**
   * @brief *************** constructor **********************
   */
  Manipulator() { Register(); }
  // Robot initialization
  void Register();

  /**
   * @brief *************** public functions **********************
   */
  void Dynamics();
  Matrixf<6, 1> Kinematics(Matrixf<4, 4> Td);
};
}  // namespace robot



#endif // __MANIPULATOR_H__