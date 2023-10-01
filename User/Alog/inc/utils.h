/**
 ******************************************************************************
 * @file    utils.cpp/h
 * @brief   General math utils. 常用数学工具函数
 * @author  Spoon Guan
 ******************************************************************************
 * Copyright (c) 2023 Team JiaoLong-SJTU
 * All rights reserved.
 ******************************************************************************
 */

#ifndef UTILS_H
#define UTILS_H

#include <stdint.h>

namespace math {

template <typename T> T Abs(T x) {
	if (x > 0) {
		return x;
	} else {
		return (-x);
	}
}
float limit(float val, const float& min, const float& max);
float limitMin(float val, const float& min);
float limitMax(float val, const float& max);
float loopLimit(float val, const float& min, const float& max);
float sign(const float& val);

}  // namespace math

#endif  // UTILS_H
