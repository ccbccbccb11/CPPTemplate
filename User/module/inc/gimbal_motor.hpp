/**
 * @file gimbal.hpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-04
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#ifndef GIMBAL_MOTOR_HPP
#define GIMBAL_MOTOR_HPP
/**
 * @brief *************** include files ***************************
 */
#include "lk_motor.hpp"
/**
 * @brief *************** namespace *******************************
 */
namespace gimbal {
/**
 * @brief *************** macro definition ************************
 */
// Gimbal motor CAN ID
typedef enum {
  kYaw = 0x141,
} GimbalMotorCANID;
// Motor target angle
typedef struct {
  float yaw;
} MotorTargetAngle;
// Gimbal current angle
typedef struct {
  int16_t yaw;
} GimbalCurrentAngle;
/**
 * @brief class declaration
 * 
 */
class Gimbal {
private:
  /**
   * @brief *************** private variables **********************
   */
  // Map of gimbal motors
  std::map<uint32_t, std::shared_ptr<motor::LkMotor>> motor_map_;
  // Gimbal target angle
  MotorTargetAngle target_angle_;
  // Gimbal current angle
  GimbalCurrentAngle current_angle_;
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
  Gimbal() { Register(); }
  /**
   * @brief *************** public functions **********************
   */
  // Gimbal initialization
  void Register();

  // Gimbal Info update
  void BaseInfoUpdate(void) {
    // Gimbal motor info update
    current_angle_.yaw = motor_map_[kYaw]->GetAngle();
  }

  // Gimbal set target angle
  void SetTargetYaw(float yaw) { target_angle_.yaw = yaw; }

  // Gimbal control task
  void ControlTask(void) {
    // Gimbal info update
    BaseInfoUpdate();

    // Set target angle
    motor_map_[kYaw]->SetPIDTarget(target_angle_.yaw);
  }

};

}  // namespace gimbal
#endif // GIMBAL_MOTOR_HPP