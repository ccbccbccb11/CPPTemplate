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
#include "dji_motor.hpp"

namespace manipulator {
/**
 * @brief *************** macro definition ************************
 */
// Manipulator motor CAN ID
typedef enum {
  kMotor1 = 0x141,
  kMotor2 = 0x142,
  kMotor3 = 0x143,
  kMotor4 = 0x144,
  kMotor5 = 0x201,
  kMotor6 = 0x202,
} ManipulatorMotorCANID;
// Motor target angle
typedef struct {
  float joint1;
  float joint2;
  float joint3;
  float joint4;
  float joint5;
  float joint6;
} MotorTargetAngle;
// Motor measure angle
typedef struct {
  float joint1;
  float joint2;
  float joint3;
  float joint4;
  float joint5;
  float joint6;
} MotorMeasureAngle;
// Motor measure speed
typedef struct {
  float joint1;
  float joint2;
  float joint3;
  float joint4;
  float joint5;
  float joint6;
} MotorMeasureSpeed;
// Motor feedforward
typedef struct {
  float joint1;
  float joint2;
  float joint3;
  float joint4;
  float joint5;
  float joint6;
} MotorFeedforward;
/**
 * @brief class Manipulator declaration
 * 
 */
class Manipulator {
private:
  /**
   * @brief *************** private variables **********************
   */
  // Manipulator motor map
  std::map<uint32_t, std::shared_ptr<motor::DjiMotor>> djimtr_map_;
  std::map<uint32_t, std::shared_ptr<motor::LkMotor>> lkmtr_map_;
  // Manipulator target angle
  MotorTargetAngle target_angle_;
  // Manipulator measure angle
  MotorMeasureAngle measure_angle_;
  // Manipulator measure speed
  MotorMeasureSpeed measure_speed_;
  // Manipulator feedforward
  MotorFeedforward feedforward_;
public:
  /**
   * @brief *************** public variables ***********************
   */
  /**
   * @brief *************** constructor ******************************
   */
  Manipulator() {}
  /**
   * @brief *************** public functions *************************
   */
  // Manipulator initialization
  void Register();

  // Manipulator all info update
  void InfoUpdate(void) {
    // Base info update
    BaseInfoUpdate();
  }

  // Base info upate
  void BaseInfoUpdate(void) {
    // Update measure angle
    measure_angle_.joint1 = lkmtr_map_[kMotor1]->GetAngle();
    measure_angle_.joint2 = lkmtr_map_[kMotor2]->GetAngle();
    measure_angle_.joint3 = lkmtr_map_[kMotor3]->GetAngle();
    // measure_angle_.joint4 = 0.0f;
    measure_angle_.joint5 = djimtr_map_[kMotor5]->GetAngle();
    measure_angle_.joint6 = djimtr_map_[kMotor6]->GetAngle();

    // Update measure speed
    measure_speed_.joint1 = lkmtr_map_[kMotor1]->GetSpeed();
    measure_speed_.joint2 = lkmtr_map_[kMotor2]->GetSpeed();
    measure_speed_.joint3 = lkmtr_map_[kMotor3]->GetSpeed();
    // measure_speed_.joint4 = 0.0f;
    measure_speed_.joint5 = djimtr_map_[kMotor5]->GetSpeed();
    measure_speed_.joint6 = djimtr_map_[kMotor6]->GetSpeed();
  }
  
  // Set joint1 target angle
  void SetJoint1TargetAngle(float angle) { target_angle_.joint1 = angle; }
  // Set joint2 target angle
  void SetJoint2TargetAngle(float angle) { target_angle_.joint2 = angle; }
  // Set joint3 target angle
  void SetJoint3TargetAngle(float angle) { target_angle_.joint3 = angle; }
  // Set joint4 target angle
  void SetJoint4TargetAngle(float angle) { target_angle_.joint4 = angle; }
  // Set joint5 target angle
  void SetJoint5TargetAngle(float angle) { target_angle_.joint5 = angle; }
  // Set joint6 target angle
  void SetJoint6TargetAngle(float angle) { target_angle_.joint6 = angle; }

  // Set joint1 feedforward
  void SetJoint1Feedforward(float feedforward) { feedforward_.joint1 = feedforward; }
  // Set joint2 feedforward
  void SetJoint2Feedforward(float feedforward) { feedforward_.joint2 = feedforward; }
  // Set joint3 feedforward
  void SetJoint3Feedforward(float feedforward) { feedforward_.joint3 = feedforward; }
  // Set joint4 feedforward
  void SetJoint4Feedforward(float feedforward) { feedforward_.joint4 = feedforward; }
  // Set joint5 feedforward
  void SetJoint5Feedforward(float feedforward) { feedforward_.joint5 = feedforward; }
  // Set joint6 feedforward
  void SetJoint6Feedforward(float feedforward) { feedforward_.joint6 = feedforward; }

  // Control Task
  void ControlTask(void);
};
}  // namespace manipulator
#endif  // MANIPULATOR_MOTOR_HPP