/**
 * @file manipulator.cpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-15
 * 
 * @copyright Copyright (c) 2023
 * 
 */
/**
 * @brief *************** include files ***************************
*/
#include "manipulator.hpp"
/**
 * @brief *************** namespace robot *************************
 */
namespace robot {
/**
 * @brief *************** macro definition ************************
 */
static uint8_t kInitFlag = 0;  // Chassis initialization flag
/**
 * @brief *************** public functions **********************
 * 
 */
// Robot register
void Manipulator::Register() {
  // Robot initialization flag
  if (kInitFlag == 1) {
    // Robot redefine!!!
    while (true)
      continue;
  }
  // Robot initialization flag
  kInitFlag = 1;

  float m[6] = {0.2645, 0.17, 0.1705, 0, 0, 0}; // Mass array
  Matrixf<3, 6> rc((float[18]){0, -8.5e-2, 0, 0, 0, 0, 
                                13.225e-2, 0, 0, 0, 0, 0,
                                0, 3.7e-2, 8.525e-2, 0, 0, 0}); // Centroid position matrix

  Matrixf<3, 3> I[6]; // Inertia tensor matrix
  I[0] = matrixf::diag<3, 3>((float[3]){1.542e-3, 0, 1.542e-3});
  I[1] = matrixf::diag<3, 3>((float[3]){0, 0.409e-3, 0.409e-3});
  I[2] = matrixf::diag<3, 3>((float[3]){0.413e-3, 0.413e-3, 0});
  I[3] = matrixf::eye<3, 3>() * 3.0f;
  I[4] = matrixf::eye<3, 3>() * 2.0f;
  I[5] = matrixf::eye<3, 3>() * 1.0f;
  
  robotics::Link links[6];  // Manipulator link class array
  links[0] = robotics::Link(0, 82.0e-2, 0, 0, robotics::R, 0, 0, 0, m[0], rc.col(0), I[0]);
  links[1] = robotics::Link(0, 85.0e-2, 0, PI / 2, robotics::R, 0, 0, 0, m[1], rc.col(1), I[1]);
  links[2] = robotics::Link(0, 0, 250, 0, robotics::R, 0, 0, 0, m[2], rc.col(2), I[2]);
  links[3] = robotics::Link(0, 0, 200, 0, robotics::R, 0, 0, 0, m[3], rc.col(3), I[3]);
  links[4] = robotics::Link(0, 0, 0, -PI / 2, robotics::R, 0, 0, 0, m[4], rc.col(4), I[4]);
  links[5] = robotics::Link(0, 0, 0, 0, robotics::R, 0, 0, 0, m[5], rc.col(5), I[5]);

  CCBArm = std::make_shared<robotics::Serial_Link<6>>(links); // Manipulator class
}
}  // namespace robot