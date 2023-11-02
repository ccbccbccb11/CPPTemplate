/**
 * @file chassis.cpp
 * @author ccb 
 * @brief 
 * @version 0.1
 * @date 2023-10-28
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include "chassis.hpp"

/**
 * @brief chassis
 */
namespace chassis {
/**
 * @brief *************** static variables **********************
 * 
 */
static uint8_t kChassisInitFlag = 0;  // Chassis initialization flag
static float kChassisOutputMax = 8000;  // Chassis initialization flag
// Chassis register
void Chassis::Register() {
  // Chassis initialization flag
  if (kChassisInitFlag == 1) {
    // Chassis redefine!!!
    while (true)
      continue;
  }
  
  // Motor initialization configuration
  motordef::MotorInitConfig chassis_config = {
    .motor_type = motordef::kRM3508,
    .can_config = {
      .can_handle = &hcan1,
    },
    .PID_speed_config = {
      .kp = 10,
      .ki = 0.1,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 50000,
      .iout_max =5000,
      .out_max = kChassisOutputMax,
    },
    .loop = motordef::kSpeedLoop,
  };

  // Initialize left front motor
  chassis_config.can_config.rx_id = 0x201;
  auto left_front = std::make_shared<motor::DjiMotor>(&chassis_config);
  // Initialize right front motor
  chassis_config.can_config.rx_id = 0x202;
  auto right_front = std::make_shared<motor::DjiMotor>(&chassis_config);
  // Initialize left back motor
  chassis_config.can_config.rx_id = 0x203;
  auto left_back = std::make_shared<motor::DjiMotor>(&chassis_config);
  // Initialize right back motor
  chassis_config.can_config.rx_id = 0x204;
  auto right_back = std::make_shared<motor::DjiMotor>(&chassis_config);
  
  // Add the left front motor to the map
  auto left_front_it = motor_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::DjiMotor>>(kLeftFront, left_front));    
  // Add the right front motor to the map
  auto right_front_it = motor_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::DjiMotor>>(kRightFront, right_front));  
  // Add the left back motor to the map
  auto left_back_it = motor_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::DjiMotor>>(kLeftBack, left_back));  
  // Add the right back motor to the map
  auto right_back_it = motor_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::DjiMotor>>(kRightBack, right_back));

  // Check if the insertion is successful
  if (left_front_it.second == false || right_front_it.second == false || left_back_it.second == false || right_back_it.second == false) {
    // Insertion failed
    while (1) {
      // Error
      // HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
      HAL_Delay(100);
    }
  } else {
    // Insertion succeeded
    kChassisInitFlag = 1;
    // HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
    HAL_Delay(100);
  }
}
/**
 * @brief Chassis control task
 * 
 */
void Chassis::ControlTask(void) {
  // Calculate the target speed of each motor
  motor_target_speed_.left_front = target_speed_.front + target_speed_.right + target_speed_.cycle;
  motor_target_speed_.right_front = -target_speed_.front + target_speed_.right + target_speed_.cycle;
  motor_target_speed_.left_back = target_speed_.front - target_speed_.right + target_speed_.cycle;
  motor_target_speed_.right_back = -target_speed_.front - target_speed_.right + target_speed_.cycle;

  // Set the target speed of each motor
  motor_map_[kLeftFront]->SetPIDTarget(motor_target_speed_.left_front);
  motor_map_[kRightFront]->SetPIDTarget(motor_target_speed_.right_front);
  motor_map_[kLeftBack]->SetPIDTarget(motor_target_speed_.left_back);
  motor_map_[kRightBack]->SetPIDTarget(motor_target_speed_.right_back);
}
}  // namespace chassis
