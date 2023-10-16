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

#include "heart_beat.hpp"
// #include <iostream>
// #include <vector>

using namespace heartbeat;

uint8_t HeartBeat::heartbeat_ins_cnt_ = 0;
/**
 * @brief 显然用 vector 等可以创建不定长数组的方式比这样指定默认最大值的方法好
 * 
 */
const uint8_t HeartBeat::default_offline_cntmax_ = 25;
HeartBeat* heartbeat_ins[HeartBeat::default_offline_cntmax_];
// 构造函数
HeartBeat::HeartBeat(uint8_t offline_cnt_max) : offline_cnt_max_(offline_cnt_max) {
  if (HeartBeat::heartbeat_ins_cnt_ >= HeartBeat::default_offline_cntmax_)
    while (1)
      continue;// 进入此死循环时请将 const uint8_t HeartBeat::default_offline_cntmax_ 调大
  
  offline_cnt_ = offline_cnt_max;
  state_ = kOffline;
	heartbeat_ins[HeartBeat::heartbeat_ins_cnt_++] = this;
}
// 心跳任务
void HeartBeat::TickTask(void) {
  for (size_t i = 0; i < HeartBeat::heartbeat_ins_cnt_; i++) {
    heartbeat_ins[i]->tick();
  }
}
