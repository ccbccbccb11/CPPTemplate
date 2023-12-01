/**
 * @file manipulator.cpp
 * @author ccb (ccccbbbb111111)
 * @brief 
 * @version 0.1
 * @date 2023-11-03
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include "manipulator_motor.hpp"

/**
 * @brief manipulator
 */
namespace manipulator {
/**
 * @brief *************** static variables **********************
 * 
 */
static uint8_t kInitFlag = 0;  // Manipulator initialization flag
static uint8_t kEncoderBits = 16;  // Encoder bits
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
  
  // Motor initialization configuration
  motordef::MotorInitConfig motor1_config = {
    .motor_type = motordef::kLkMtr,
    .can_config = {
      .can_handle = &hcan1,
      .rx_id = kMotor1,
    },
    .PID_posit_inner_config = {
      .kp = 0.6,
      .ki = 0.0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 5000,
      .iout_max = 500,
      .out_max = 1800,
    },
    .PID_posit_outer_config = {
      .kp = 1,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 500,
    },
    .loop = motordef::kPositLoop,
    .encoder_bits = kEncoderBits,
  };
  motordef::MotorInitConfig motor2_config = {
    .motor_type = motordef::kLkMtr,
    .can_config = {
      .can_handle = &hcan1,
      .rx_id = kMotor2,
    },
    .PID_posit_inner_config = {
      .kp = 0.6,
      .ki = 0.0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 5000,
      .iout_max = 500,
      .out_max = 1800,
    },
    .PID_posit_outer_config = {
      .kp = 1,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 500,
    },
    .loop = motordef::kPositLoop,
    .encoder_bits = kEncoderBits,
  };
  motordef::MotorInitConfig motor3_config = {
    .motor_type = motordef::kLkMtr,
    .can_config = {
      .can_handle = &hcan1,
      .rx_id = kMotor3,
    },
    .PID_posit_inner_config = {
      .kp = 0.6,
      .ki = 0.0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 5000,
      .iout_max = 500,
      .out_max = 1800,
    },
    .PID_posit_outer_config = {
      .kp = 1,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 500,
    },
    .loop = motordef::kPositLoop,
    .encoder_bits = kEncoderBits,
  };

  motordef::MotorInitConfig motor5_config = {
    .motor_type = motordef::kRM2006,
    .can_config = {
      .can_handle = &hcan2,
      .rx_id = kMotor5,
    },
    .PID_posit_inner_config = {
      .kp = 0,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 0,
    },
    .PID_posit_outer_config = {
      .kp = 0,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 0,
    },
    .loop = motordef::kPositLoop,
  };
  motordef::MotorInitConfig motor6_config = {
    .motor_type = motordef::kRM2006,
    .can_config = {
      .can_handle = &hcan2,
      .rx_id = kMotor6,
    },
    .PID_posit_inner_config = {
      .kp = 0,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 0,
    },
    .PID_posit_outer_config = {
      .kp = 0,
      .ki = 0,
      .kd = 0,
      .blind_err = 0 ,
      .integral_max = 0,
      .iout_max =0,
      .out_max = 0,
    },
    .loop = motordef::kPositLoop,
  };
  

  // initialize motor1
  auto motor1 = std::make_shared<motor::LkMotor>(&motor1_config);
  // initialize motor2
  auto motor2 = std::make_shared<motor::LkMotor>(&motor2_config);
  // initialize motor3
  auto motor3 = std::make_shared<motor::LkMotor>(&motor3_config);

  // initialize motor5
  auto motor5 = std::make_shared<motor::DjiMotor>(&motor5_config);
  // initialize motor6
  auto motor6 = std::make_shared<motor::DjiMotor>(&motor6_config);

  // insert motor1
  auto motor1_it = lkmtr_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::LkMotor>>(kMotor1, motor1));
  // insert motor2
  auto motor2_it = lkmtr_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::LkMotor>>(kMotor2, motor2));
  // insert motor3
  auto motor3_it = lkmtr_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::LkMotor>>(kMotor3, motor3));

  // insert motor5
  auto motor5_it = djimtr_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::DjiMotor>>(kMotor5, motor5));
  // insert motor6
  auto motor6_it = djimtr_map_.insert(std::pair<uint32_t, std::shared_ptr<motor::DjiMotor>>(kMotor6, motor6));

  // Manipulator initialization flag
  kInitFlag = 1;

  // Check if the insertion is successful
  if (motor1_it.second == false || motor2_it.second == false || 
      motor3_it.second == false || // motor4_it.second == false ||
      motor5_it.second == false || motor6_it.second == false) {
    // Insertion failed
    while (true)
      continue; // Error
  }

  // Feedforward initialization
  lkmtr_map_[kMotor1]->external_info_.SetFeedforward(motordef::kAnglein, &feedforward_.motor1);
  lkmtr_map_[kMotor2]->external_info_.SetFeedforward(motordef::kAnglein, &feedforward_.motor2);
  lkmtr_map_[kMotor3]->external_info_.SetFeedforward(motordef::kAnglein, &feedforward_.motor3);

  djimtr_map_[kMotor5]->external_info_.SetFeedforward(motordef::kPositin, &feedforward_.motor5);
  djimtr_map_[kMotor6]->external_info_.SetFeedforward(motordef::kPositin, &feedforward_.motor6);
}
/**
 * @brief Manipulator control task
 * 
 */
void Manipulator::ControlTask() {
  // Manipulator initialization flag
  if (kInitFlag == 0) {
    // Manipulator not initialized!!!
    while (true)
      continue;
  }

  // Manipulator info update
  InfoUpdate();

  // Set the target angle of each motor // 1092.267f
  lkmtr_map_[kMotor1]->SetPIDTarget(target_angle_.motor1);
  lkmtr_map_[kMotor2]->SetPIDTarget(-target_angle_.motor2);
  lkmtr_map_[kMotor3]->SetPIDTarget(-target_angle_.motor2+target_angle_.motor3);

  djimtr_map_[kMotor5]->SetPIDTarget(target_angle_.motor5);
  djimtr_map_[kMotor6]->SetPIDTarget(target_angle_.motor6);
}
}  // namespace manipulator