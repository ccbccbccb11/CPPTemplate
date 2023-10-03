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
 
 #ifndef TEST_MOTOR_HPP
 #define TEST_MOTOR_HPP

#include "stm32f4xx_hal.h"
#include "pid.hpp"
 
#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/*C code*/
void Test_PIDInit(void);
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
#ifdef __cplusplus
			/*C++ code*/
extern motor::Motor test_motor;
extern pid::PIDControler test_pid;
#endif /*__cplusplus*/
#endif /*TEST_MOTOR_HPP*/