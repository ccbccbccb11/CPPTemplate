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
 
 #include "test_motor.hpp"
 
 using namespace motor;
 using namespace pid;
 
Motor test_motor(kMotorDriverCAN1, kGM6020, 0x206);
PIDControler test_speed_pid(0.1, 0.01, 0.05, 0.01, 1.0, 0.5, 10.0, kSpeed); 
