/**
 ******************************************************************************
 * @file    entity.cpp/h
 * @brief   control entity on STM32. STM32控制实例
 * @author  CCB
 ******************************************************************************
 * Copyright (c) 2024 Team RobotPilots-SZU
 * All rights reserved.
 ******************************************************************************
 */

#ifndef ENTITY_HPP
#define ENTITY_HPP

#include "device.hpp"
#include "pid.hpp"
#include <stdint.h>
#include <iostream>
#include <vector>

#ifdef __cplusplus
using namespace motor;
using namespace pid;
namespace entity
{
	// 实体状态
typedef enum {
	kOffline = 0,
	kOnline,
} WorkState;
	// 实体 pid 模式
typedef enum {
	kSpeed= 0,
	kAngle,
	kPosit,
} PIDMode;
 // 实体类
template <uint8_t _n = 1>
class Entity {
	public:
		Entity(Motor motors[_n]) {
			for (int i = 0; i < _n; i++) {
				motors_[i] = &motors[i];
			}
	}
		//
	int16_t GetOneMotorSpeed(uint8_t i) {
	}
		//
	int32_t GetOneMotorAngleSum(uint8_t i) {
	}
		//
	int16_t GetOneMotorCurrent(uint8_t i) {
	}
		//
	void SetOneMotorPIDTarget(float target, uint8_t i) {
	}
		//
	void SetAllMotorsPIDTarget(float target[_n]) {
	}
		//
	void OneMotorPIDCalculating(PIDMode mode, uint8_t i) {
	}
		//
	void AllMotorPIDCalculating(PIDMode mode) {
	}
		//
	void AllMotorCANSend(void) {
	}

	private:
		Motor* motors_[_n];
};
} // namespace entity
#endif  /* __cplusplus */
#endif	/* ENTITY_HPP */







