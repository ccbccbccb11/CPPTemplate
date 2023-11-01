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

motordef::MotorInitConfig lf_config = {
  .motor_type = motordef::kRM3508,
  .can_config = {
    .can_handle = &hcan1,
    .rx_id = 0x201,
  },
  .PID_speed_config = {
    .kp = 10,
    .ki = 0.1,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 100000,
    .iout_max =10000,
    .out_max = 10000,
  },
  .loop = motordef::kSpeedLoop,
};
motordef::MotorInitConfig rf_config = {
  .motor_type = motordef::kRM3508,
  .can_config = {
    .can_handle = &hcan1,
    .rx_id = 0x202,
  },
  .PID_speed_config = {
    .kp = 10,
    .ki = 0.1,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 100000,
    .iout_max =10000,
    .out_max = 10000,
  },
  .loop = motordef::kSpeedLoop,
};
motordef::MotorInitConfig lb_config = {
  .motor_type = motordef::kRM3508,
  .can_config = {
    .can_handle = &hcan1,
    .rx_id = 0x203,
  },
  .PID_speed_config = {
    .kp = 10,
    .ki = 0.1,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 100000,
    .iout_max =10000,
    .out_max = 10000,
  },
  .loop = motordef::kSpeedLoop,
};
motordef::MotorInitConfig rb_config = {
  .motor_type = motordef::kRM3508,
  .can_config = {
    .can_handle = &hcan1,
    .rx_id = 0x204,
  },
  .PID_speed_config = {
    .kp = 10,
    .ki = 0.1,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 100000,
    .iout_max =10000,
    .out_max = 10000,
  },
  .loop = motordef::kSpeedLoop,
};
//djimtr::DjiMotor lf = djimtr::DjiMotor(&lf_config);
//djimtr::DjiMotor rf = djimtr::DjiMotor(&rf_config);
//djimtr::DjiMotor lb = djimtr::DjiMotor(&lb_config);
//djimtr::DjiMotor rb = djimtr::DjiMotor(&rb_config);
/**
 * @brief Chassis Register
 * 
 */
void chassis::Chassis::Register() {
//  motor_map_.insert(std::pair<ChassisMotor, djimtr::DjiMotor*>(kLeftFront, lf.GetObjectHandle()));
//  motor_map_.insert(std::pair<ChassisMotor, djimtr::DjiMotor*>(kRightFront, rf.GetObjectHandle()));
//  motor_map_.insert(std::pair<ChassisMotor, djimtr::DjiMotor*>(kLeftBack, lb.GetObjectHandle()));
//  motor_map_.insert(std::pair<ChassisMotor, djimtr::DjiMotor*>(kRightBack, rb.GetObjectHandle()));

}

