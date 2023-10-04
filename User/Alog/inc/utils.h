/**
 ******************************************************************************
 * @file    .cpp/h
 * @brief   General math utils. 常用数学工具函数
 * @author  
 ******************************************************************************
 * Copyright (c) 2024 Team RobotPilots-SZU
 * All rights reserved.
 ******************************************************************************
 */
#ifndef UTILS_H
#define UTILS_H

#include <stdint.h>

namespace math {
template <typename T> T Abs(T val) {
	if (val > 0) {
		return val;
	} else {
		return (-val);
	}
}
template <typename T> bool DistanceBool(T val, T end, T err) {
	if (Abs(val - end) < err)
		return true;
	else
		return false;
}
template <typename T> T Limit(T val, T min, T max) {
	if (min > max)
    return val;
	else if (val < min)
		val = min;
	else if (val > max)
		val = max;
	return val;
}
// K 越大越信任当前
template <typename T> T LowPass(T now, T last, T K) {
	K = Limit(K, 0.f, 1.f);
	return (last + (now - last) * K);
}
float limit(float val, const float& min, const float& max);
float limitMin(float val, const float& min);
float limitMax(float val, const float& max);
float loopLimit(float val, const float& min, const float& max);
float sign(const float& val);

}  // namespace math

#endif  // UTILS_H
