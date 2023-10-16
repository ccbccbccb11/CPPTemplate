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
 
#ifndef PID_HPP
#define PID_HPP

#include "stm32f4xx_hal.h"
#include "utils.h"
#include <iostream>
#include <vector>

using namespace math;

namespace pid {
// pid 初始化信号
typedef enum {
	kPIDEmpty = 0,
	kPIDInit,
} PidInit;
// pid 错误信号
typedef enum {
	kParamErr = -1,
} PIDState;
// pid 信息类
class PIDInfo {
public:
  PIDInfo() : config_init_(kPIDEmpty) {};
  float		target_;
  float		measure_;
  float		err_;
float GetIntegral(void) {
  return integral_;
}
protected:
  float		last_err_;
  float		integral_;
  float		pout_;
  float		iout_;
  float		dout_;
  float		out_;
  PidInit config_init_;
};
// pid 系数类初始化用
struct PIDInitConfig {
public:
  float	  kp;
  float 	ki;
  float 	kd;
  float   blind_err;	
  float 	integral_max;	
  float   iout_max;
  float 	out_max;
};

// pid 系数类
class PIDConfig {
public:
  PIDConfig() {}
  PIDConfig(PIDInitConfig* config) {
    kp_ = config->kp;
    ki_ = config->ki;
    kd_ = config->kd;
    blind_err_ = config->blind_err;	
    integral_max_ = config->integral_max;	
    iout_max_ = config->iout_max;
    out_max_ = config->out_max; 
  }
  PIDConfig(float	kp,
      float	ki,
      float	kd,
      float	blind_err,
      float	integral_max,
      float	iout_max,
      float	out_max) : 
      kp_(kp), ki_(ki), 
      kd_(kd), blind_err_(blind_err), 
      integral_max_(integral_max), 
      iout_max_(iout_max),  out_max_(out_max) {}
//	protected:
  float	  kp_;
  float 	ki_;
  float 	kd_;
  float   blind_err_;	
  float 	integral_max_;	
  float   iout_max_;
  float 	out_max_;
};
// pid 单元类
class PIDUnit : public PIDInfo, public PIDConfig {
public:
  PIDUnit() { config_init_ = kPIDEmpty; }
  PIDUnit(PIDInitConfig* config) : PIDInfo(), PIDConfig(config) { 
    config_init_ = kPIDInit; 
  }
  PIDUnit(float	kp,
      float	ki,
      float	kd,
      float	blind_err,
      float	integral_max,
      float	iout_max,
      float	out_max) : PIDInfo(), 
      PIDConfig(kp, ki, kd,
            blind_err,
            integral_max,
            iout_max,
            out_max) {
        config_init_ = kPIDInit; 
      }
    // 设置目标值
  void SetPIDTarget(float target) {
    target_ = target;
  }
    // 设置测量值
  void SetPIDMeasure(float measure) {
    measure_ = measure;
  }
    // 设置误差
  void SetPIDErr(float target, float measure) {
    SetPIDTarget(target);
    SetPIDMeasure(measure);
    err_ = target_ - measure_;
  }
    // 设置误差
  void SetPIDErr(float err) {\
    err_ = err;
  }
    // 计算 pid 输出（误差内部计算无预处理）
  float CalcPIDOut(float target, float measure) {
    SetPIDErr(target, measure);
    if (math::Abs(err_) <= blind_err_)
      err_ = 0;
    integral_ += err_;
    integral_ = Constrain(integral_, -integral_max_, integral_max_);
    pout_ = kp_ * err_;
    iout_ = ki_ * integral_;
    dout_ = kd_ * (err_ - last_err_);
    iout_ = Constrain(iout_, -iout_max_, iout_max_);
    out_ = pout_ + iout_ + dout_;
    out_ = Constrain(out_, -out_max_, out_max_);
    last_err_ = err_;
    return out_;
  }
    // 计算 pid 输出（误差外部处理）
  float CalcPIDOut(void) {
    if (math::Abs(err_) <= blind_err_)
      err_ = 0;
    integral_ += err_;
    integral_ = Constrain(integral_, -integral_max_, integral_max_);
    pout_ = kp_ * err_;
    iout_ = ki_ * integral_;
    dout_ = kd_ * (err_ - last_err_);
    iout_ = Constrain(iout_, -iout_max_, iout_max_);
    out_ = pout_ + iout_ + dout_;
    out_ = Constrain(out_, -out_max_, out_max_);
    last_err_ = err_;
    return out_;
  }
    // 获取当前误差
  float GetPIDErr(void) {
    return err_;
  }
    // 获取当前输出
  float	GetPIDOut(void) {
    return out_;
  }
};
//PID控制类
class PIDControler {
public:
  PIDControler() { init_flag_ = kPIDEmpty; }
  PIDControler(PIDInitConfig* config) {
    InitMotorPIDParams(config);
    init_flag_ = kPIDInit;
  }
  PIDControler(float kp,
          float	ki, float	kd,
          float	blind_err,
          float	integral_max,
          float	iout_max,
          float	out_max) {
    InitMotorPIDParams(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
    init_flag_ = kPIDInit;
  }
    // 电机 pid 初始化 传配置结构体
  void InitMotorPIDParams(PIDInitConfig* config)  {
        PID_instance_ = PIDUnit(config);
  }
    // 电机 pid 初始化 传数
  void InitMotorPIDParams(float kp,
          float	ki, float	kd,
          float	blind_err,
          float	integral_max,
          float	iout_max,
          float	out_max) {
        PID_instance_ = PIDUnit(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
    
  }
    // 电机 pid 初始化 数组
  void InitMotorPIDParams(float* pid_buffs)  {
        PID_instance_ = PIDUnit(pid_buffs[0], 
                pid_buffs[1], 
                pid_buffs[2], 
                pid_buffs[3], 
                pid_buffs[4], 
                pid_buffs[5], 
                pid_buffs[6]);
  }
    // 电机 pid 初始化
  void InitMotorPIDParams(PIDConfig config)  {
        PID_instance_ = PIDUnit(config.kp_, 
                config.ki_, 
                config.kd_, 
                config.blind_err_, 
                config.integral_max_, 
                config.iout_max_, 
                config.out_max_);
    
  }
    //创建任意数量的 pid 单元类
  void AddPIDUnit(float kp,
            float	ki, float	kd,
            float	blind_err,
            float	integral_max,
            float	iout_max,
            float	out_max) {
    PIDUnit PIDUnits(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
    PIDUnits_.push_back(PIDUnits);
  }
    // 获取 PID 单元的数量
  size_t GetPIDUnitsCount() const {
      return PIDUnits_.size();
  }
    // 获取指定索引的 PID 单元
  const PIDUnit* GetPIDUnit(size_t index) const {
      if (index < PIDUnits_.size()) {
        return &PIDUnits_[index];
      } else {
        return  nullptr;
      }
  }
    // 设置指定索引的 PID 单元的参数
  void SetPIDUnitParams(size_t index, float kp, float ki, float kd) {
      if (index < PIDUnits_.size()) {
        PIDUnits_[index].kp_ = kp;
        PIDUnits_[index].ki_ = ki;
        PIDUnits_[index].kd_ = kd;
      }
  }
    // 单环计算 err 无预处理
  float SingleLoop(float target, float measure) {
    return PID_instance_.CalcPIDOut(target, measure);
  }
    // 单环计算 err 半圈检测预处理
  float SingleLoop(float target, float measure, float cycle) {
    float err;
    PID_instance_.SetPIDErr(target, measure);
    err = PID_instance_.GetPIDErr();
    err = HalfCycle(err, cycle);
    PID_instance_.SetPIDErr(err);
    return PID_instance_.CalcPIDOut();
  }
    // 双环串级计算
  float DualLoopCascade(PIDUnit* pid_inloop, 
          float measure_inloop, 
          PIDUnit* pid_outloop, 
          float target_outloop, 
          float measure_outloop) {
    float outer_output = pid_outloop->CalcPIDOut(target_outloop, measure_outloop);
    return pid_inloop->CalcPIDOut(outer_output, measure_inloop);
  }
   // 获取初始化信息
  PidInit GetInitFlag(void) {
    return init_flag_;
  }
  void SetKp(float kp) {
    PID_instance_.kp_ = kp;
  }
  void SetKi(float ki) {
    PID_instance_.ki_ = ki;
  }
  void SetKd(float kd) {
    PID_instance_.kd_ = kd;
  }
  float GetIntegral(void) {
    return PID_instance_.GetIntegral();
  }
  float GetIntegralMax(void) {
    return PID_instance_.integral_max_;
  }
private:
  /* pid 实体 */
  PIDUnit PID_instance_;
  /* 自定义用 */
  std::vector<PIDUnit> PIDUnits_;
  /* 大类状态检测 */
  PIDState state_;
  /* 初始化标志 */
  PidInit	 init_flag_;
};
}
#endif	/* PID_HPP */
