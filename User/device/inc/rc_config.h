/**
  ******************************************************************************
  * @file           : config_remote.c\h
  * @brief          : 
  * @note           : 
  ******************************************************************************
  */

#ifndef __CONFIG_REMOTE_H
#define __CONFIG_REMOTE_H

#include "stm32f4xx_hal.h"

/* 遥控器失联计数上限 */
const int16_t REMOTE_OFFLINE_CNT_MAX = 50;
/* 检测按键长按时间 */
const int16_t MOUSE_BTN_L_CNT_MAX = 500;    //ms 鼠标左键
const int16_t MOUSE_BTN_R_CNT_MAX = 500;    //ms 鼠标右键
const int16_t KEY_Q_CNT_MAX = 500;          //ms Q键
const int16_t KEY_W_CNT_MAX = 1000;         //ms W键
const int16_t KEY_E_CNT_MAX = 500;          //ms E键
const int16_t KEY_R_CNT_MAX = 500;          //ms R键
const int16_t KEY_A_CNT_MAX = 1000;         //ms A键
const int16_t KEY_S_CNT_MAX = 1000;         //ms S键
const int16_t KEY_D_CNT_MAX = 1000;         //ms D键
const int16_t KEY_F_CNT_MAX = 500;          //ms F键
const int16_t KEY_G_CNT_MAX = 500;          //ms G键
const int16_t KEY_Z_CNT_MAX = 500;          //ms Z键
const int16_t KEY_X_CNT_MAX = 500;          //ms X键
const int16_t KEY_C_CNT_MAX = 500;          //ms C键
const int16_t KEY_V_CNT_MAX = 500;          //ms V键
const int16_t KEY_B_CNT_MAX = 500;          //ms B键
const int16_t KEY_SHIFT_CNT_MAX = 500;      //ms SHIFT键
const int16_t KEY_CTRL_CNT_MAX = 500;       //ms CTRL键
/* 平滑滤波次数 */
const uint8_t REMOTE_SMOOTH_TIMES = 5;      //鼠标平滑滤波次数
/* 旋钮临界值 */
const int16_t WHEEL_JUMP_VALUE = 550;

#endif
