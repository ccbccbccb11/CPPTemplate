/**
 * @file gimbal_motor.cpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-04
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include "gimbal_motor.hpp"

/**
 * @brief gimbal
 */
namespace gimbal {
/**
 * @brief *************** static variables **********************
 * 
 */
static uint8_t kInitFlag = 0;  // Gimbal initialization flag
CAN_HandleTypeDef* can_handle = &hcan1;  // CAN handle
/**
 * @brief *************** public functions **********************
 * 
 */
// Gimbal register
void Gimbal::Register() {
  // Gimbal initialization flag
  if (kInitFlag == 1) {
    // Gimbal redefine!!!
    while (true)
      continue;
  }
  
  // Motor initialization configuration
  motordef::MotorInitConfig gimbal_config = {
    .motor_type = motordef::kLkMtr,
    .can_config = {
      .can_handle = can_handle,
      .rx_id = kYaw,
    },
    .PID_angle_outer_config = {
      .kp = 0,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 0,
    },
    .PID_angle_inner_config = {
      .kp = 0,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 0,
    },
    .loop = motordef::kAngleLoop,
  };

  // Initialize yaw motor
  auto yaw = std::make_shared<motor::LkMotor>(&gimbal_config);
  // Add to map
  auto yaw_it = motor_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::LkMotor>>(kYaw, yaw));

  // Gimbal initialization flag
  kInitFlag = 1;

  // Check if the insertion is successful
  if (yaw_it.second == false) {
    // Insertion failed
    while (true)
      continue; // Error
  }
}
}  // namespace gimbal