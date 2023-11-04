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
#include "chassis_motor.hpp"

/**
 * @brief chassis
 */
namespace chassis {
/**
 * @brief *************** static variables **********************
 * 
 */
static uint8_t kInitFlag = 0;  // Chassis initialization flag
CAN_HandleTypeDef* can_handle = &hcan1;  // CAN handle
static const uint8_t kSpeedConstraint = 10;  // Chassis speed constraint, enable when it isn't 0
// Chassis register
void Chassis::Register() {
  // Chassis initialization flag
  if (kInitFlag == 1) {
    // Chassis redefine!!!
    while (true)
      continue;
  }
  
  // Motor initialization configuration
  motordef::MotorInitConfig chassis_config = {
    .motor_type = motordef::kRM3508,
    .can_config = {
      .can_handle = can_handle,
    },
    .PID_speed_config = {
      .kp = 10,
      .ki = 0.1,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 50000,
      .iout_max =0,
      .out_max = 15000,
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
    }
  } else {
    // Insertion succeeded
    kInitFlag = 1;
  }
}
// Chassis register
void Chassis::Register(ChassisInitConfig* config) {
  // Chassis initialization flag
  if (kInitFlag == 1) {
    // Chassis redefine!!!
    while (true)
      continue;
  }
  
  // Motor initialization configuration
  motordef::MotorInitConfig chassis_config = {
    .motor_type = motordef::kRM3508,
    .can_config = {
      .can_handle = can_handle,
    },
    .PID_speed_config = {
      .kp = 10,
      .ki = 0.1,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 50000,
      .iout_max =5000,
      .out_max = config->output_max,
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
    }
  } else {
    // Insertion succeeded
    kInitFlag = 1;
  }

  // Chassis linear correct kp && feedforward enable
  if (math::Abs(config->linear_correct_kp) > 0.001f) {
    linear_correct_kp_ = config->linear_correct_kp;
    motor_map_[kLeftFront]->external_info_.SetFeedforward(motordef::kSpeed, &speed_feedforward_.left_front);
    motor_map_[kRightFront]->external_info_.SetFeedforward(motordef::kSpeed, &speed_feedforward_.right_front);
    motor_map_[kLeftBack]->external_info_.SetFeedforward(motordef::kSpeed, &speed_feedforward_.left_back);
    motor_map_[kRightBack]->external_info_.SetFeedforward(motordef::kSpeed, &speed_feedforward_.right_back);
  }
  
}
/**
 * @brief Chassis control task
 * 
 */
void Chassis::ControlTask(void) {
  // Chassis speed update
  BaseInfoUpdate();
  // Chassis speed constraint
//  SpeedConstraint();

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
/**
 * @brief Chassis linear correct
 * 
 * @param  
 */
void Chassis::LinearCorrect(void) {
  int16_t front_sign = math::sign(target_speed_.front - current_speed_.front);
  int16_t right_sign = math::sign(target_speed_.right - current_speed_.right);
  int16_t cycle_sign = math::sign(target_speed_.cycle - current_speed_.cycle);
  // @todo: Add the linear correct
}
/**
 * @brief Chassis speed constraint
 * 
 */
void Chassis::SpeedConstraint(void) {
  static int16_t last_front = 0, last_right = 0;
  if (math::Abs(target_speed_.front - last_front) > kSpeedConstraint) {
    target_speed_.front = last_front + math::sign(target_speed_.front - last_front) * kSpeedConstraint;
  }
  if (math::Abs(target_speed_.right - last_right) > kSpeedConstraint) {
    target_speed_.right = last_right + math::sign(target_speed_.right - last_right) * kSpeedConstraint;
  }
  last_front = target_speed_.front == 0 ? 0 : target_speed_.front;
  last_right = target_speed_.right == 0 ? 0 : target_speed_.right;
}
/**
 * @brief Chassis prportional correct
 * 
 */
void Chassis::ProportionalCorrect(void) {
  
}
}  // namespace chassis
