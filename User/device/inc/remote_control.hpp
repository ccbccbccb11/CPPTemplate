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

#ifndef REMOTE_CONTROL_HPP
#define REMOTE_CONTROL_HPP

#include "rc_config.h"
#include "utils.h"
#include <iostream>
#include <vector>

#ifdef __cplusplus
    /* C++ code */
typedef enum {
  kRCOnline,
  kRCOffline,
} RCState;
 // 按键状态枚举 
typedef enum {
  kRelax_K,        //放松
  kDown_K,         //按下
  kUp_K,           //抬起
  kShortPress_K,  //短按
  kLongPress_K,   //长按
} KeyboardStatus;
 // 遥控器拨杆旋钮状态枚举 
typedef enum {
  kKeep_R,         //保持
  kUp_R,           //向上拨
  kMid_R,          //向中拨
  kDown_R,         //向下拨
} RemoteStatus;
 // 按键信息
class KeyboardInfo {
public:
    /* data */
  uint8_t value;    //值
  uint8_t status;   //状态
  int16_t cnt;      //当前计数
  int16_t cnt_max;  //计数上限
};
 // 拨杆信息
class StickInfo {
public:
    /* data */
  uint8_t value_last;  //上一次值
  uint8_t value;       //新值
  uint8_t status;      //状态
};
 // 旋钮信息
class WheelInfo {
public:
    /* data */
  int16_t value_last;  //上一次值
  int16_t value;       //新值
  uint8_t status;      //状态
};
 // 原始信息
class RCBaseInfo {
public:
  // 遥控器 
  int16_t        ch0;             //右的左右
  int16_t        ch1;             //右的前后
  int16_t        ch2;             //左的左右
  int16_t        ch3;             //左的前后
  StickInfo      s1;              //左拨杆
  StickInfo      s2;              //右拨杆
  WheelInfo      thumbwheel;      //左旋扭
  // 键盘                          
  int16_t        mouse_vx;        //鼠标x轴速度
  int16_t        mouse_vy;        //鼠标y轴速度
  int16_t        mouse_vz;        //鼠标z轴速度
  KeyboardInfo   mouse_btn_l;     //鼠标左键
  KeyboardInfo   mouse_btn_r;     //鼠标右键
  KeyboardInfo   Q;               //按键Q
  KeyboardInfo   W;               //按键W
  KeyboardInfo   E;               //按键E
  KeyboardInfo   R;               //按键R
  KeyboardInfo   A;               //按键A
  KeyboardInfo   S;               //按键S
  KeyboardInfo   D;               //按键D
  KeyboardInfo   F;               //按键F
  KeyboardInfo   G;               //按键G
  KeyboardInfo   Z;               //按键Z
  KeyboardInfo   X;               //按键X
  KeyboardInfo   C;               //按键C
  KeyboardInfo   V;               //按键V
  KeyboardInfo   B;               //按键B
  KeyboardInfo   Shift;           //按键Shift
  KeyboardInfo   Ctrl;            //按键Ctrl
};
 // 鼠标加工信息
class MouseInfo {
public:
  float  speed_x;      //鼠标x轴速度
  float  speed_y;      //鼠标y轴速度
  float  speed_x_K;    //鼠标x轴滤波后速度
  float  speed_y_K;    //鼠标y轴滤波后速度
};
 // 遥控状态信息
class RCStateInfo {
public:
  int16_t  offline_cnt;      //失联计数
  int16_t  offline_cnt_max;  //失联计数最大值
  RCState  status;           //状态
};
 // 遥控大类
class RC {   
public:
    RC() {}
    RC(RCBaseInfo* base_info, MouseInfo* mouse_info, RCStateInfo* state_info) :
       base_info_(base_info), mouse_info_(mouse_info), state_info_(state_info),
       interrupt_(false) {
        StateInfoInit();
        BaseInfoInit();
    }
      // 基本信息初始化
    void BaseInfoInit(void) {
        memset(base_info_, 0, sizeof(RCBaseInfo));
        base_info_->s1.status = kKeep_R;
        base_info_->s2.status = kKeep_R;
        base_info_->thumbwheel.status = kKeep_R;
        KeyboardCntMaxSet();
    }
     // 键盘计数值初始化
    void KeyboardCntMaxSet(void) {
        base_info_->mouse_btn_l.cnt_max = MOUSE_BTN_L_CNT_MAX;
        base_info_->mouse_btn_r.cnt_max = MOUSE_BTN_R_CNT_MAX;
        base_info_->Q.cnt_max = KEY_Q_CNT_MAX;
        base_info_->W.cnt_max = KEY_W_CNT_MAX;
        base_info_->E.cnt_max = KEY_E_CNT_MAX;
        base_info_->R.cnt_max = KEY_R_CNT_MAX;
        base_info_->A.cnt_max = KEY_A_CNT_MAX;
        base_info_->S.cnt_max = KEY_S_CNT_MAX;
        base_info_->D.cnt_max = KEY_D_CNT_MAX;
        base_info_->F.cnt_max = KEY_F_CNT_MAX;
        base_info_->G.cnt_max = KEY_G_CNT_MAX;
        base_info_->Z.cnt_max = KEY_Z_CNT_MAX;
        base_info_->X.cnt_max = KEY_X_CNT_MAX;
        base_info_->C.cnt_max = KEY_C_CNT_MAX;
        base_info_->V.cnt_max = KEY_V_CNT_MAX;
        base_info_->B.cnt_max = KEY_B_CNT_MAX;
        base_info_->Shift.cnt_max = KEY_SHIFT_CNT_MAX;
        base_info_->Ctrl.cnt_max = KEY_CTRL_CNT_MAX;
    }
     // 状态初始化
    void StateInfoInit(void) {
        state_info_->offline_cnt_max = REMOTE_OFFLINE_CNT_MAX;
        state_info_->offline_cnt = state_info_->offline_cnt_max;
        state_info_->status = kRCOffline;
    }
     // 心跳
    void HeartBeat(void) {
        state_info_->offline_cnt ++;
        if (state_info_->offline_cnt > state_info_->offline_cnt_max) {
            state_info_->offline_cnt = state_info_->offline_cnt_max;
            state_info_->status = kRCOffline;
        } else {
            SoftResetCheck();
        }
    }
     // 软件复位
    void SoftResetCheck(void) {
        if ((base_info_->Z.status != kRelax_K) && 
            (base_info_->X.status != kRelax_K) && 
            (base_info_->C.status != kRelax_K))
			HAL_NVIC_SystemReset();
    }
     // 总控
    void ControlTask(void) {
        if (interrupt_ == true) {
            interrupt_ = false;
            /* 遥控器拨杆状态更新 */
            StickStatusUpdate();
            /* 遥控器旋钮状态更新 */
            WheelStatusUpdate();
            /* 键盘按键状态更新 */
            AllKeyboardStatusUpdate();
        } else {
            GetAllKeyboardStatus();
        }
        mouse_info_->speed_x_K = math::LowPass(mouse_info_->speed_x, mouse_info_->speed_x_K, 0.1f);
        mouse_info_->speed_y_K = math::LowPass(mouse_info_->speed_y, mouse_info_->speed_y_K, 0.1f);
    }
     // 遥控器拨杆状态跳变判断并更新
    void StickStatusUpdate(void) {
        /* 左拨杆判断 */
        if (base_info_->s1.value != base_info_->s1.value_last) {
            switch(base_info_->s1.value) {
            case 1:
                base_info_->s1.status = kUp_R;
                break;
            case 3:
                base_info_->s1.status = kMid_R;
                break;
            case 2:
                base_info_->s1.status = kDown_R;
                break;
            default:
                break;
            }
            base_info_->s1.value_last = base_info_->s1.value;
        } else {
            base_info_->s1.status = kKeep_R;
        }
        
        /* 右拨杆判断 */
        if (base_info_->s2.value != base_info_->s2.value_last) {
            switch(base_info_->s2.value) {
            case 1:
                base_info_->s2.status = kUp_R;
                break;
            case 3:
                base_info_->s2.status = kMid_R;
                break;
            case 2:
                base_info_->s2.status = kDown_R;
                break;
            default:
                break;
            }
            base_info_->s2.value_last = base_info_->s2.value;
        } else {
            base_info_->s2.status = kKeep_R;
        }
    }
     // 遥控器旋钮状态跳变判断并更新
    void WheelStatusUpdate(void) {
        if (abs(base_info_->thumbwheel.value_last) < WHEEL_JUMP_VALUE) {
            if (base_info_->thumbwheel.value > WHEEL_JUMP_VALUE)
                base_info_->thumbwheel.status = kUp_R;
            else if (base_info_->thumbwheel.value < -WHEEL_JUMP_VALUE)
                base_info_->thumbwheel.status = kDown_R;
            else 
                base_info_->thumbwheel.status = kKeep_R;
        } else {
            base_info_->thumbwheel.status = kKeep_R;
        }
        base_info_->thumbwheel.value_last = base_info_->thumbwheel.value;
    }
     // 所有键盘按键状态判断并更新
    void AllKeyboardStatusUpdate(void) {
        KeyboardStatusUpdate(&base_info_->mouse_btn_l);
        KeyboardStatusUpdate(&base_info_->mouse_btn_r);
        KeyboardStatusUpdate(&base_info_->Q);
        KeyboardStatusUpdate(&base_info_->W);
        KeyboardStatusUpdate(&base_info_->E);
        KeyboardStatusUpdate(&base_info_->R);
        KeyboardStatusUpdate(&base_info_->A);
        KeyboardStatusUpdate(&base_info_->S);
        KeyboardStatusUpdate(&base_info_->D);
        KeyboardStatusUpdate(&base_info_->F);
        KeyboardStatusUpdate(&base_info_->G);
        KeyboardStatusUpdate(&base_info_->Z);
        KeyboardStatusUpdate(&base_info_->X);
        KeyboardStatusUpdate(&base_info_->C);
        KeyboardStatusUpdate(&base_info_->V);
        KeyboardStatusUpdate(&base_info_->B);
        KeyboardStatusUpdate(&base_info_->Shift);
        KeyboardStatusUpdate(&base_info_->Ctrl);
    }
     // 键盘按键状态判断并更新
    void KeyboardStatusUpdate(KeyboardInfo* key) {
        switch (key->status) {
            case kRelax_K:
                if (key->value == 1) {
                    key->status = kDown_K;
                    key->cnt = 0;
                }
                break;
            case kShortPress_K:
                if (key->value == 0) {
                    key->status = kUp_K;
                    key->cnt = 0;
                } else if (key->value == 1) {
                    key->cnt++;
                    if (key->cnt >= key->cnt_max) {
                    key->status = kLongPress_K;
                    key->cnt = key->cnt_max;
                    }
                }
                break;
            case kLongPress_K:
                if(key->value == 0) {
                    key->status = kUp_K;
                    key->cnt = 0;
                }
                break;
            default:
            break;
        }
    }
     // 所有键盘按键状态判断并更新
    void GetAllKeyboardStatus(void) {
        GetKeyboardStatus(&base_info_->mouse_btn_l);
        GetKeyboardStatus(&base_info_->mouse_btn_r);
        GetKeyboardStatus(&base_info_->Q);
        GetKeyboardStatus(&base_info_->W);
        GetKeyboardStatus(&base_info_->E);
        GetKeyboardStatus(&base_info_->R);
        GetKeyboardStatus(&base_info_->A);
        GetKeyboardStatus(&base_info_->S);
        GetKeyboardStatus(&base_info_->D);
        GetKeyboardStatus(&base_info_->F);
        GetKeyboardStatus(&base_info_->G);
        GetKeyboardStatus(&base_info_->Z);
        GetKeyboardStatus(&base_info_->X);
        GetKeyboardStatus(&base_info_->C);
        GetKeyboardStatus(&base_info_->V);
        GetKeyboardStatus(&base_info_->B);
        GetKeyboardStatus(&base_info_->Shift);
        GetKeyboardStatus(&base_info_->Ctrl);
    }
     // 键盘按键状态判断并更新
    void GetKeyboardStatus(KeyboardInfo* key) {
        switch(key->status) {
            case kDown_K:
                key->status = kShortPress_K;
                key->cnt++;
                break;
            case kUp_K:
                key->status = kRelax_K;
                key->cnt = 0;
                break;
            case kShortPress_K:
                key->cnt++;
                if (key->cnt >= key->cnt_max) {
                    key->value = kLongPress_K;
                    key->cnt = key->cnt_max;
                }
                break;
            default:
            break;
        }
    }
     // 信息更新总接口
    void UARTDataUpdate(uint8_t* rxbuf);
     // 基本信息更新
    void BaseInfoUpdate(uint8_t* rxbuf);
     // 基本信息限幅
    void BaseInfoChect(void);
     // 鼠标信息计算
    void MouseInfoCalc(void);

public:
    /* data */
    RCBaseInfo*  base_info_;
    MouseInfo*   mouse_info_;
    RCStateInfo* state_info_;
    bool         interrupt_;  
};
#endif

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
    /* C code*/
extern RC rc;
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
#endif  /* REMOTE_CONTROL_HPP */
