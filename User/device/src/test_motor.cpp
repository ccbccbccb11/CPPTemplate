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
PIDControler test_pid(2,0,0,0,0,0,2000,kSpeed);
