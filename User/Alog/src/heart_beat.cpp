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
#include <map>

using namespace heartbeat;

uint8_t HeartBeat::heartbeat_ins_key_ = 0;
const uint8_t HeartBeat::default_offline_cntmax_ = 50;
std::map<uint8_t, HeartBeat*> heart_beat_map;
// Init
void HeartBeat::HeartBeatInsInit(uint8_t offline_cnt_max){
  offline_cnt_max_ = offline_cnt_max;
  offline_cnt_ = offline_cnt_max_;
  state_ = kOffline;
  heart_beat_map.insert(std::pair<uint8_t, HeartBeat*>(HeartBeat::heartbeat_ins_key_++, this));
}
// Tick Task
void HeartBeat::TickTask(void) {
  for (auto it=heart_beat_map.begin(); it!=heart_beat_map.end(); it++) {
    it->second->tick();
  }
}
