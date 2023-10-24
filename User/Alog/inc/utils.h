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
// x > max || x < min --> x = max || min 
template <typename T> T Constrain(T x, T min, T max) {
	if (x > max) {
		return max;
	}
	if (x < min) {
		return min;
	}
	return x;
}
template <typename T> bool Contain(T x, T min, T max) {
	// If x is in the range min to max, return true, otherwise return false.
	if (x < max && x > min) {
		return true;
	} else {
		return false;
	}
}
// Periodic processing
template <typename T> T OneCycle(T t, T c) {
	if (t < 0) {
		t += c;
	} else {
		t -= c;
	}
	return t;
}
template <typename T> T Abs(T val) {
  if (val > 0) {
    return val;
  } else {
    return (-val);
  }
}
// Half circle processing
template <typename T> T HalfCycle(T angle, T max) {
	// If angle is too large, subtract max.
	if (Abs(angle) > max/2) {
		if (angle >= 0) {
			angle -= max;
		} else {
			angle += max;
		}
	}
	return angle;
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
	// K must be between 0 and 1.
	K = Limit(K, 0.f, 1.f);
	// The output is the weighted average of the current and previous values.
	return (last + (now - last) * K);
}
float limit(float val, const float& min, const float& max);
float limitMin(float val, const float& min);
float limitMax(float val, const float& max);
float loopLimit(float val, const float& min, const float& max);
float sign(const float& val);

}  // namespace math

#endif  // UTILS_H
