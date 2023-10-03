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

#ifdef __cplusplus
using namespace motor;
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
		Entity(Motor* motors[_n]) {
			for (int i = 0; i < _n; i++) {
				motors_[i] = motors[i];
			}
		}
		Entity(Motor* motors) {
			motors_[0] = motors;
		}
		virtual void PIDCalculating() = 0;
		virtual void PIDOutput() = 0;
		virtual void ControlTask() = 0;
		virtual void InfoUpdate() = 0;
		virtual void HeartBeat() = 0;

	private:
		Motor* motors_[_n];
};
} // namespace entity
#endif  /* __cplusplus */
#endif	/* ENTITY_HPP */







