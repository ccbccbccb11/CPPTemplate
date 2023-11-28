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
/**
 * @brief *************** include files *********************
 * 
 */
#include "lk_motor.hpp"
#include "dji_motor.hpp"
/**
 * @brief *************** namespace manipulator *********************
 * 
 */
namespace manipulator {
/**
 * @brief *************** macro definition ************************
 */
// Manipulator motor CAN ID
typedef enum {
  kMotor1 = 0x144,
  kMotor2 = 0x143,
  kMotor3 = 0x142,
  kMotor4 = 0x141,
  kMotor5 = 0x201,
  kMotor6 = 0x202,
} ManipulatorMotorCANID;
// Motor target angle
typedef struct {
  float motor1;
  float motor2;
  float motor3;
  float motor4;
  float motor5;
  float motor6;
} MotorTargetAngle;
// Motor measure angle
typedef struct {
  float motor1;
  float motor2;
  float motor3;
  float motor4;
  float motor5;
  float motor6;
} MotorMeasureAngle;
// Motor measure speed
typedef struct {
  float motor1;
  float motor2;
  float motor3;
  float motor4;
  float motor5;
  float motor6;
} MotorMeasureSpeed;
// Motor feedforward
typedef struct {
  float motor1;
  float motor2;
  float motor3;
  float motor4;
  float motor5;
  float motor6;
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
  Manipulator() { Register(); }
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
    // measure_angle_.motor1 = lkmtr_map_[kMotor1]->GetAngle();
    // measure_angle_.motor2 = lkmtr_map_[kMotor2]->GetAngle();
    // measure_angle_.motor3 = lkmtr_map_[kMotor3]->GetAngle();
    measure_angle_.motor1 = lkmtr_map_[kMotor1]->GetPosit();
    measure_angle_.motor2 = lkmtr_map_[kMotor2]->GetPosit();
    measure_angle_.motor3 = lkmtr_map_[kMotor3]->GetPosit();
    // measure_angle_.motor4 = 0.0f;
    measure_angle_.motor5 = djimtr_map_[kMotor5]->GetPosit();
    measure_angle_.motor6 = djimtr_map_[kMotor6]->GetPosit();

    // Update measure speed
    measure_speed_.motor1 = lkmtr_map_[kMotor1]->GetSpeed();
    measure_speed_.motor2 = lkmtr_map_[kMotor2]->GetSpeed();
    measure_speed_.motor3 = lkmtr_map_[kMotor3]->GetSpeed();
    // measure_speed_.motor4 = 0.0f;
    measure_speed_.motor5 = djimtr_map_[kMotor5]->GetSpeed();
    measure_speed_.motor6 = djimtr_map_[kMotor6]->GetSpeed();
  }

  // Get joint1 measure angle(degree)
  float GetJoint1MeasureAngleDegree() { return measure_angle_.motor1/1092.0f; }
  // Get joint2 measure angle(degree)
  float GetJoint2MeasureAngleDegree() { return -(measure_angle_.motor2+measure_angle_.motor2)/1092.0f; }
  // Get joint3 measure angle(degree)
  float GetJoint3MeasureAngleDegree() { return measure_angle_.motor2/1092.0f; }
  
  // Set motor1 target angle
  void SetMotor1TargetAngle(float angle) { target_angle_.motor1 = angle; }
  // Set motor2 target angle
  void SetMotor2TargetAngle(float angle) { target_angle_.motor2 = angle; }
  // Set motor3 target angle
  void SetMotor3TargetAngle(float angle) { target_angle_.motor3 = angle; }
  // Set motor4 target angle
  void SetMotor4TargetAngle(float angle) { target_angle_.motor4 = angle; }
  // Set motor5 target angle
  void SetMotor5TargetAngle(float angle) { target_angle_.motor5 = angle; }
  // Set motor6 target angle
  void SetMotor6TargetAngle(float angle) { target_angle_.motor6 = angle; }

  // Set joint1 feedforward
  void SetMotor1Feedforward(float feedforward) { feedforward_.motor1 = feedforward; }
  // Set Motor2 feedforward
  void SetMotor2Feedforward(float feedforward) { feedforward_.motor2 = feedforward; }
  // Set Motor3 feedforward
  void SetMotor3Feedforward(float feedforward) { feedforward_.motor3 = feedforward; }
  // Set Motor4 feedforward
  void SetMotor4Feedforward(float feedforward) { feedforward_.motor4 = feedforward; }
  // Set Motor5 feedforward
  void SetMotor5Feedforward(float feedforward) { feedforward_.motor5 = feedforward; }
  // Set Motor6 feedforward
  void SetMotor6Feedforward(float feedforward) { feedforward_.motor6 = feedforward; }

  // Set joint1 PID
  void SetJoint1PID(float kpin, float kiin, float kdin, float kpout, float kiout, float kdout) {
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositin]->SetKp(kpin);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositin]->SetKi(kiin);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositin]->SetKd(kdin);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositout]->SetKp(kpout);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositout]->SetKi(kiout);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositout]->SetKd(kdout);
  }
  // Set joint2 PID
  void SetJoint2PID(float kpin, float kiin, float kdin, float kpout, float kiout, float kdout) {
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositin]->SetKp(kpin);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositin]->SetKi(kiin);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositin]->SetKd(kdin);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositout]->SetKp(kpout);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositout]->SetKi(kiout);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositout]->SetKd(kdout);
  }
  // Set joint3 PID
  void SetJoint3PID(float kpin, float kiin, float kdin, float kpout, float kiout, float kdout) {
    lkmtr_map_[kMotor3]->controler_.PID_map_[motordef::kPositin]->SetKp(kpin);
    lkmtr_map_[kMotor3]->controler_.PID_map_[motordef::kPositin]->SetKi(kiin);
    lkmtr_map_[kMotor3]->controler_.PID_map_[motordef::kPositin]->SetKd(kdin);
    lkmtr_map_[kMotor3]->controler_.PID_map_[motordef::kPositout]->SetKp(kpout);
    lkmtr_map_[kMotor3]->controler_.PID_map_[motordef::kPositout]->SetKi(kiout);
    lkmtr_map_[kMotor3]->controler_.PID_map_[motordef::kPositout]->SetKd(kdout);
  }

  // Control Task
  void ControlTask(void);
};
}  // namespace manipulator
#endif  // MANIPULATOR_MOTOR_HPP