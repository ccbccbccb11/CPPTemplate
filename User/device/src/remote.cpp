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

#include "remote_control.hpp"
#include "ave_filter.h"


RCBaseInfo base_info;
MouseInfo mouse_info;
RCStateInfo state_info;
RC rc(&base_info, &mouse_info, &state_info);

void RC::BaseInfoUpdate(uint8_t* rxbuf) {
  RC::base_info_->ch0 = (rxbuf[0]      | rxbuf[1] << 8                 ) & 0x07FF;
  RC::base_info_->ch0 -= 1024;
  RC::base_info_->ch1 = (rxbuf[1] >> 3 | rxbuf[2] << 5                 ) & 0x07FF;
  RC::base_info_->ch1 -= 1024;
  RC::base_info_->ch2 = (rxbuf[2] >> 6 | rxbuf[3] << 2 | rxbuf[4] << 10) & 0x07FF;
  RC::base_info_->ch2 -= 1024;
  RC::base_info_->ch3 = (rxbuf[4] >> 1 | rxbuf[5] << 7                 ) & 0x07FF;
  RC::base_info_->ch3 -= 1024;
  RC::base_info_->s1.value = ((rxbuf[5] >> 4) & 0x000C) >> 2;
  RC::base_info_->s2.value = ( rxbuf[5] >> 4) & 0x0003;

  RC::base_info_->mouse_vx = rxbuf[6]  | (rxbuf[7 ] << 8);
  RC::base_info_->mouse_vy = rxbuf[8]  | (rxbuf[9 ] << 8);
  RC::base_info_->mouse_vz = rxbuf[10] | (rxbuf[11] << 8);
  RC::base_info_->mouse_btn_l.value = rxbuf[12] & 0x01;
  RC::base_info_->mouse_btn_r.value = rxbuf[13] & 0x01;
  RC::base_info_->W.value =   rxbuf[14]        & 0x01;
  RC::base_info_->S.value = ( rxbuf[14] >> 1 ) & 0x01;
  RC::base_info_->A.value = ( rxbuf[14] >> 2 ) & 0x01;
  RC::base_info_->D.value = ( rxbuf[14] >> 3 ) & 0x01;
  RC::base_info_->Shift.value = ( rxbuf[14] >> 4 ) & 0x01;
  RC::base_info_->Ctrl.value = ( rxbuf[14] >> 5 ) & 0x01;
  RC::base_info_->Q.value = ( rxbuf[14] >> 6 ) & 0x01 ;
  RC::base_info_->E.value = ( rxbuf[14] >> 7 ) & 0x01 ;
  RC::base_info_->R.value = ( rxbuf[15] >> 0 ) & 0x01 ;
  RC::base_info_->F.value = ( rxbuf[15] >> 1 ) & 0x01 ;
  RC::base_info_->G.value = ( rxbuf[15] >> 2 ) & 0x01 ;
  RC::base_info_->Z.value = ( rxbuf[15] >> 3 ) & 0x01 ;
  RC::base_info_->X.value = ( rxbuf[15] >> 4 ) & 0x01 ;
  RC::base_info_->C.value = ( rxbuf[15] >> 5 ) & 0x01 ;
  RC::base_info_->V.value = ( rxbuf[15] >> 6 ) & 0x01 ;
  RC::base_info_->B.value = ( rxbuf[15] >> 7 ) & 0x01 ;

  RC::base_info_->thumbwheel.value = ((int16_t)rxbuf[16] | ((int16_t)rxbuf[17] << 8)) & 0x07ff;
  RC::base_info_->thumbwheel.value -= 1024;
}

void RC::BaseInfoChect(void) {
  RC::base_info_->ch0 = math::Limit<int16_t>(RC::base_info_->ch0, -(int16_t)660, (int16_t)660);
  RC::base_info_->ch1 = math::Limit<int16_t>(RC::base_info_->ch1, -(int16_t)660, (int16_t)660);
  RC::base_info_->ch2 = math::Limit<int16_t>(RC::base_info_->ch2, -(int16_t)660, (int16_t)660);
  RC::base_info_->ch3 = math::Limit<int16_t>(RC::base_info_->ch3, -(int16_t)660, (int16_t)660);
  RC::base_info_->thumbwheel.value = math::Limit<int16_t>(RC::base_info_->thumbwheel.value, -(int16_t)660, (int16_t)660);
}

void RC::MouseInfoCalc(void) {
  /* 鼠标速度均值滤波 */
  static int16_t speed_x[REMOTE_SMOOTH_TIMES], speed_y[REMOTE_SMOOTH_TIMES];
  static int16_t index = 0;
  index++;
  if(index == REMOTE_SMOOTH_TIMES) {
      index = 0;
  }
  RC::mouse_info_->speed_x -= (float)speed_x[index] / (float)REMOTE_SMOOTH_TIMES;
  RC::mouse_info_->speed_y -= (float)speed_y[index] / (float)REMOTE_SMOOTH_TIMES;
  speed_x[index] = RC::base_info_->mouse_vx;
  speed_y[index] = RC::base_info_->mouse_vy;
  RC::mouse_info_->speed_x += (float)speed_x[index] / (float)REMOTE_SMOOTH_TIMES;
  RC::mouse_info_->speed_y += (float)speed_y[index] / (float)REMOTE_SMOOTH_TIMES;
}

void RC::UARTDataUpdate(uint8_t* rxbuf) {
  RC::BaseInfoUpdate(rxbuf);
  RC::BaseInfoChect();
  RC::MouseInfoCalc();
  RC::interrupt_ = true;
}