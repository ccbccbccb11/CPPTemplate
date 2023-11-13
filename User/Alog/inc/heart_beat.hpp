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

#ifndef HEART_BEAT_HPP
#define HEART_BEAT_HPP

// #include <stdint.h>
#include "main.h"

namespace heartbeat {
//状态枚举
typedef enum {
  kOffline = 0,
  kOnline = 1,
} HeartBeatState;
//心跳类
class HeartBeat {
private:
  /* data */
  uint8_t offline_cnt_;
  uint8_t offline_cnt_max_;
  HeartBeatState state_;
public:
  static uint8_t heartbeat_ins_key_;
  static const uint8_t default_offline_cntmax_;
  HeartBeat() { offline_cnt_max_ = default_offline_cntmax_; }
  HeartBeat(uint8_t offline_cnt_max) { HeartBeatInsInit(offline_cnt_max); }
  void HeartBeatInsInit(uint8_t offline_cnt_max=default_offline_cntmax_);
  HeartBeatState GetState(void) {
    return state_;
  }
	void ResetOfflineCnt(void) {
		offline_cnt_ = 0;
	}
  void tick(void) {
    offline_cnt_ ++;
    if (offline_cnt_ > offline_cnt_max_)  {
      offline_cnt_ = offline_cnt_max_;
      state_ = kOffline;
    } else if (state_ == kOffline) {
        state_ = kOnline;
    }
  }
  static void TickTask(void);
};
}

#endif