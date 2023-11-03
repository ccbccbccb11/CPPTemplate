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
/**
 * @brief *************** macro definition ************************
 */
// Chassis motor CAN ID
typedef enum {
  kLeftFront = 0x201,
  kRightFront = 0x202,
  kLeftBack = 0x203,
  kRightBack = 0x204,
} ChassisMotorCANID;
// Chassis target speed
typedef struct {
  int16_t front;
  int16_t right;
  int16_t cycle;
} ChassisTargetSpeed;
// Motor target speed
typedef struct {
  float left_front;
  float right_front;
  float left_back;
  float right_back;
} MotorTargetSpeed;
// Chassis current speed
typedef struct {
  int16_t front;
  int16_t right;
  int16_t cycle;
} ChassisCurrentSpeed;
// Chassis measure speed
typedef struct {
  int16_t left_front;
  int16_t right_front;
  int16_t left_back;
  int16_t right_back;
} ChassisMeasureSpeed;
// Chassis feedforward
typedef struct {
  float left_front;
  float right_front;
  float left_back;
  float right_back;
} ChassisSpeedFeedforward;
// Chassis init configuration
typedef struct {
  float output_max;
  float linear_correct_kp;
} ChassisInitConfig;
/**
 * @brief *************** class declaration ***********************
 */
class Chassis {
private:
  /**
   * @brief *************** private variables **********************
   */
  // Map from motor enum to motor object
  std::map<uint32_t, std::shared_ptr<motor::DjiMotor>> motor_map_;
  // Chassis target speed
  ChassisTargetSpeed target_speed_;
  // Motor target speed
  MotorTargetSpeed motor_target_speed_;
  // Chassis current speed
  ChassisCurrentSpeed current_speed_;
  // Chassis measure speed
  ChassisMeasureSpeed measure_speed_;
  // Chassis speed feedforward
  ChassisSpeedFeedforward speed_feedforward_;
  // Chassis linear correct kp
  float linear_correct_kp_;
  /**
   * @brief *************** private functions **********************
   */
public:
  /**
   * @brief *************** public variables ***********************
   */
  /**
   * @brief *************** constructor ******************************
   */
  Chassis() { Register(); }
  Chassis(ChassisInitConfig* config) { Register(config); }
  
  /**
   * @brief *************** public functions **********************
   */
  // Chassis initialization
  void Register();
  void Register(ChassisInitConfig* config);

  // Chassis update
  void InfoUpdate(void) { BaseInfoUpdate(); }

  // Chassis speed update
  void BaseInfoUpdate(void) {
    measure_speed_.left_front = motor_map_[kLeftFront]->GetSpeed();
    measure_speed_.right_front = motor_map_[kRightFront]->GetSpeed();
    measure_speed_.left_back = motor_map_[kLeftBack]->GetSpeed();
    measure_speed_.right_back = motor_map_[kRightBack]->GetSpeed();

    current_speed_.front = GetFrontSpeed();
    current_speed_.right = GetRightSpeed();
    current_speed_.cycle = GetCycleSpeed();
  }

  // Return the current front speed
  int16_t GetFrontSpeed(void) { return (measure_speed_.left_front - measure_speed_.right_front
                                      + measure_speed_.right_front - measure_speed_.right_back) / 4; }
  
  // Return the current right speed
  int16_t GetRightSpeed(void) { return (measure_speed_.left_front + measure_speed_.right_front
                                      - measure_speed_.right_front - measure_speed_.right_back) / 4; }
  
  // Return the current cycle speed
  int16_t GetCycleSpeed(void) { return (measure_speed_.left_front + measure_speed_.right_front
                                      + measure_speed_.right_front + measure_speed_.right_back) / 4; }
  
  // Set the target front speed
  void SetFrontSpeed(float front) { target_speed_.front = front; }

  // Set the target right speed
  void SetRightSpeed(float right) { target_speed_.right = right; }
  
  // Set the target cycle speed
  void SetCycleSpeed(float cycle) { target_speed_.cycle = cycle; }

  // Set the chassis linear correct kp
  void SetLinearCorrectKp(float kp) { linear_correct_kp_ = kp; }

  // Chassis control task
  void ControlTask(void);

  // Chassis speed linear correct
  void LinearCorrect(void);

  // Chassis speed constraint
  void SpeedConstraint(void);

  // Chassis speed prportional correct
  void ProportionalCorrect(void);
};
}
#endif /* CHASSIS_HPP */