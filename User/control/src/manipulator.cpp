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
// Manipulator register
void Manipulator::Register() {
  // Manipulator initialization flag
  if (kInitFlag == 1) {
    // Manipulator redefine!!!
    while (true)
      continue;
  }
  // Manipulator initialization flag
  kInitFlag = 1;

  float m[6] = {2.097, 0.507, 0.31, 0, 0, 0}; // Mass array
  Matrixf<3, 6> rc((float[18]){-1.04e-3, 143.25e-3, 89.43e-3, 0, 0, 0, 
                               32.07e-3, -6.13e-3,  -7.47e-3, 0, 0, 0,
                               68.90e-3, -4.62e-3,  -0.65e-3, 0, 0, 0}); // Centroid position matrix

  Matrixf<3, 3> I[6]; // Inertia tensor matrix
  I[0] = Matrixf<3, 3>((float[9]){ 8.586e-3, 0.063e-3, 0.031e-3, 
                                   0.063e-3, 4.401e-3, 0.290e-3, 
                                   0.031e-3, 0.290e-3, 7.469e-3 });
  I[1] = Matrixf<3, 3>((float[9]){ 1.783e-3, 0.010e-3,-0.087e-3, 
                                   0.010e-3, 5.857e-3, 0.003e-3, 
                                  -0.087e-3, 0.003e-3, 4.740e-3 });
  I[2] = Matrixf<3, 3>((float[9]){ 0.677e-3,-0.040e-3,-0.155e-3, 
                                  -0.040e-3, 2.413e-3, 0.012e-3, 
                                  -0.155e-3, 0.012e-3, 2.134e-3 });
  I[3] = matrixf::zeros<3, 3>();
  I[4] = matrixf::zeros<3, 3>();
  I[5] = matrixf::zeros<3, 3>();
  
  robotics::Link links[6];  // Manipulator link class array
  links[0] = robotics::Link(0, 0,        0,        PI / 2, robotics::R, 0, -PI, PI, m[0], rc.col(0), I[0]);
  links[1] = robotics::Link(0, 0,        250.0e-3, 0,      robotics::R, 0, 0, 3*PI/4, m[1], rc.col(1), I[1]);
  links[2] = robotics::Link(0, 0,        0,        PI / 2, robotics::R, 0, -PI/4, PI/2, m[2], rc.col(2), I[2]);
  links[3] = robotics::Link(0, 200.0e-3, 0,       -PI / 2, robotics::R, 0, 0, 0, m[3], rc.col(3), I[3]);
  links[4] = robotics::Link(0, 0,        0,        PI / 2, robotics::R, 0, 0, 0, m[4], rc.col(4), I[4]);
  links[5] = robotics::Link(0, 0,        0,        0,      robotics::R, 0, 0, 0, m[5], rc.col(5), I[5]);

  CCBArm = std::make_shared<robotics::Serial_Link<6>>(links); // Manipulator class
}
//
void Manipulator::Dynamics() {
  Matrixf<6, 1> q((float[6]){-1.8074, -0.6443, -0.1703, 0, 0, 0});
  Matrixf<6, 1> dq((float[6]){4, 4, 4, 0, 0, 0});
  Matrixf<6, 1> ddq((float[6]){4, 4, 4, 0, 0, 0});
  Matrixf<6, 1> he = matrixf::zeros<6, 1>();
  Matrixf<6, 1> tua = CCBArm->rne(q, dq, ddq);
}
//
float ccb=1.f;
Matrixf<6, 1> q;
Matrixf<6, 1> q0 = matrixf::zeros<6, 1>();
float abc=1.f;
float abc1=0.57f;
Matrixf<6, 1> Manipulator::Kinematics(Matrixf<4, 4> Td) {
  Matrixf<6, 1> q;
  q[0][0] = 0;
  q[1][0] = abc;
  q[2][0] = abc1;
  q[3][0] = 0;
  q[4][0] = 0;
  q[5][0] = 0;
	float norm = q.norm();
  q0[4][0] = ccb;
  Matrixf<4, 4> TT = CCBArm->fkine(q);
  Matrixf<6, 1> q_ = CCBArm->ikine(Td, q0);
  for (size_t i = 0; i < 6; i++) {
    q_[i][0] = math::limit(q_[i][0], CCBArm->qmin(i), CCBArm->qmax(i));
  }

	return q_;
}
}  // namespace robot
