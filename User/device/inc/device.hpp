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
 
 #ifndef DEVICE_HPP
 #define DEVICE_HPP

#include "stm32f4xx_hal.h"

#ifdef __cplusplus
			/*C++ code*/
#include <iostream>
#include <vector>
#include "motor.hpp"
#include "uart_protocol.hpp"

class Device {
	public:
		static uint8_t motors_count_;
		Device() {}
			// 添加电机
		void AddMotors(motor::Motor* motors) {
			motors_.push_back(motors);
			motors_count_ ++;
		}
			// 获取电机数量
		size_t GetMotorsCount() const {
			return motors_.size();
		}
			// 获取指定索引的电机
		motor::Motor* GetMotors(size_t index) {
			if (index < motors_.size()) {
				return motors_[index];
			} else {
				return nullptr;
			}
		}
	private:
		std::vector<motor::Motor*> motors_;
};
extern Device devices;
#endif /*__cplusplus*/

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/*C code*/
void Device_Init(void);
void Device_HeartBeat(void);
void Device_Work(void);
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
#endif /*DEVICE_HPP*/























