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
#include "matrix.h"
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
// Motor Current
typedef struct {
  int16_t motor1;
  int16_t motor2;
  int16_t motor3;
  int16_t motor4;
  int16_t motor5;
  int16_t motor6;
} MotorCurrent;
// Motor State
typedef struct {
  motordef::MotorState motor1;
  motordef::MotorState motor2;
  motordef::MotorState motor3;
  motordef::MotorState motor4;
  motordef::MotorState motor5;
  motordef::MotorState motor6;
} MotorState;
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
  // Manipulator current
  MotorCurrent current_;
  // Manipulator feedforward
  MotorFeedforward feedforward_;
  // Manipulator motor state
  MotorState motor_state_;
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

    GetMotorState();
    GetMotorsCurrent();
  }

  // 1092.267 = 65536*6/360
  // 62582.27 = 65536*6/(2*PI)

  // Get joint1 measure angle(degree)
  float GetJoint1MeasureAngleDegree() { return measure_angle_.motor1/1092.267f; }
  // Get joint2 measure angle(degree)
  float GetJoint2MeasureAngleDegree() { return -(measure_angle_.motor2+measure_angle_.motor2)/1092.267f; }
  // Get joint3 measure angle(degree)
  float GetJoint3MeasureAngleDegree() { return measure_angle_.motor2/1092.267f; }

  
  // Get joint1 measure angle(radian)
  float GetJoint1MeasureAngleRadian() { return measure_angle_.motor1/62582.27f; }
  // Get joint2 measure angle(radian)
  float GetJoint2MeasureAngleRadian() { return -(measure_angle_.motor2+measure_angle_.motor2)/62582.27f; }
  // Get joint3 measure angle(radian)
  float GetJoint3MeasureAngleRadian() { return measure_angle_.motor2/62582.27f; }

  // Get Motor State
  void GetMotorState() {
    motor_state_.motor1 = lkmtr_map_[kMotor1]->GetState();
    motor_state_.motor2 = lkmtr_map_[kMotor2]->GetState();
    motor_state_.motor3 = lkmtr_map_[kMotor3]->GetState();
    // motor_state_.motor4 = lkmtr_map_[kMotor4]->GetState();
    motor_state_.motor5 = djimtr_map_[kMotor5]->GetState();
    motor_state_.motor6 = djimtr_map_[kMotor6]->GetState();
  }

  // Get Motors Current
  void GetMotorsCurrent() {
    current_.motor1 = lkmtr_map_[kMotor1]->GetCurrent();
    current_.motor2 = lkmtr_map_[kMotor2]->GetCurrent();
    current_.motor3 = lkmtr_map_[kMotor3]->GetCurrent();
    // current.motor4 = lkmtr_map_[kMotor4]->GetCurrent();
    current_.motor5 = djimtr_map_[kMotor5]->GetCurrent();
    current_.motor6 = djimtr_map_[kMotor6]->GetCurrent();
  }
  
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
  // Set six motors target angle
  void SetMotorsTargetAngle(Matrixf<6, 1> angle) {
    target_angle_.motor1 = angle[0][0];
    target_angle_.motor2 = angle[1][0];
    target_angle_.motor3 = angle[2][0];
    target_angle_.motor4 = angle[3][0];
    target_angle_.motor5 = angle[4][0];
    target_angle_.motor6 = angle[5][0];
  }

  // Set Motor Stop
  void Motor23Stop() {
    lkmtr_map_[kMotor2]->MotorStop();
    lkmtr_map_[kMotor3]->MotorStop();
  }

  // Set motor1 target angle degree 0~360
  void SetMotor1TargetAngleDegree(float angle) { target_angle_.motor1 = angle*1092.267f; }
  // Set motor2 target angle degree 0~360
  void SetMotor2TargetAngleDegree(float angle) { target_angle_.motor2 = angle*1092.267f; }
  // Set motor3 target angle degree 0~360
  void SetMotor3TargetAngleDegree(float angle) { target_angle_.motor3 = angle*1092.267f; }
  // Set motor4 target angle degree 0~360
  void SetMotor4TargetAngleDegree(float angle) { target_angle_.motor4 = angle*1092.267f; }
  // Set motor5 target angle degree 0~360
  void SetMotor5TargetAngleDegree(float angle) { target_angle_.motor5 = angle*1092.267f; }
  // Set motor6 target angle degree 0~360
  void SetMotor6TargetAngleDegree(float angle) { target_angle_.motor6 = angle*1092.267f; }
  // Set six motors target angle degree 0~360
  void SetMotorsTargetAngleDegree(Matrixf<6, 1> angle) {
    target_angle_.motor1 = angle[0][0]*1092.267f;
    target_angle_.motor2 = angle[1][0]*1092.267f;
    target_angle_.motor3 = angle[2][0]*1092.267f;
    target_angle_.motor4 = angle[3][0]*1092.267f;
    target_angle_.motor5 = angle[4][0]*1092.267f;
    target_angle_.motor6 = angle[5][0]*1092.267f;
  }
  // Set six motors target angle degree 0~360
  void SetJointSpaceTarAngle(Matrixf<6, 1> angle) {
    target_angle_.motor1 = angle[0][0]*1092.267f;
    target_angle_.motor2 = (165.f - angle[1][0])*1092.267f;
    target_angle_.motor3 = (angle[2][0] + 55.f)*1092.267f;
    target_angle_.motor4 = angle[3][0]*1092.267f;
    target_angle_.motor5 = angle[4][0]*1092.267f;
    target_angle_.motor6 = angle[5][0]*1092.267f;
  }

  // Set motor1 target angle radian 0~2*PI
  void SetMotor1TargetAngleRadian(float angle) { target_angle_.motor1 = angle*62582.27; }
  // Set motor2 target angle radian 0~2*PI
  void SetMotor2TargetAngleRadian(float angle) { target_angle_.motor2 = angle*62582.27; }
  // Set motor3 target angle radian 0~2*PI
  void SetMotor3TargetAngleRadian(float angle) { target_angle_.motor3 = angle*62582.27; }
  // Set motor4 target angle radian 0~2*PI
  void SetMotor4TargetAngleRadian(float angle) { target_angle_.motor4 = angle*62582.27; }
  // Set motor5 target angle radian 0~2*PI
  void SetMotor5TargetAngleRadian(float angle) { target_angle_.motor5 = angle*62582.27; }
  // Set motor6 target angle radian 0~2*PI
  void SetMotor6TargetAngleRadian(float angle) { target_angle_.motor6 = angle*62582.27; }
  // Set six motors target angle radian 0~2*PI
  void SetMotorsTargetAngleRadian(Matrixf<6, 1> angle) {
    target_angle_.motor1 = angle[0][0]*62582.27;
    target_angle_.motor2 = angle[1][0]*62582.27;
    target_angle_.motor3 = angle[2][0]*62582.27;
    target_angle_.motor4 = angle[3][0]*62582.27;
    target_angle_.motor5 = angle[4][0]*62582.27;
    target_angle_.motor6 = angle[5][0]*62582.27;
  }

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
  void SetMotor1PID(float kpin, float kiin, float kdin, float kpout, float kiout, float kdout) {
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositin]->SetKp(kpin);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositin]->SetKi(kiin);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositin]->SetKd(kdin);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositout]->SetKp(kpout);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositout]->SetKi(kiout);
    lkmtr_map_[kMotor1]->controler_.PID_map_[motordef::kPositout]->SetKd(kdout);
  }
  // Set joint2 PID
  void SetMotor2PID(float kpin, float kiin, float kdin, float kpout, float kiout, float kdout) {
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositin]->SetKp(kpin);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositin]->SetKi(kiin);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositin]->SetKd(kdin);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositout]->SetKp(kpout);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositout]->SetKi(kiout);
    lkmtr_map_[kMotor2]->controler_.PID_map_[motordef::kPositout]->SetKd(kdout);
  }
  // Set joint3 PID
  void SetMotor3PID(float kpin, float kiin, float kdin, float kpout, float kiout, float kdout) {
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