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
// pid ��ʼ���ź�
typedef enum {
	kPIDEmpty = 0,
	kPIDInit,
} PidInit;
// pid �����ź�
typedef enum {
	kParamErr = -1,
} PIDState;
// pid ��Ϣ��
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
// pid ϵ�����ʼ����
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

// pid ϵ����
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
// pid ��Ԫ��
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
    // ����Ŀ��ֵ
  void SetPIDTarget(float target) {
    target_ = target;
  }
    // ���ò���ֵ
  void SetPIDMeasure(float measure) {
    measure_ = measure;
  }
    // �������
  void SetPIDErr(float target, float measure) {
    SetPIDTarget(target);
    SetPIDMeasure(measure);
    err_ = target_ - measure_;
  }
    // �������
  void SetPIDErr(float err) {\
    err_ = err;
  }
    // ���� pid ���������ڲ�������Ԥ����
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
    // ���� pid ���������ⲿ����
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
    // ��ȡ��ǰ���
  float GetPIDErr(void) {
    return err_;
  }
    // ��ȡ��ǰ���
  float	GetPIDOut(void) {
    return out_;
  }
};
//PID������
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
    // ��� pid ��ʼ�� �����ýṹ��
  void InitMotorPIDParams(PIDInitConfig* config)  {
        PID_instance_ = PIDUnit(config);
  }
    // ��� pid ��ʼ�� ����
  void InitMotorPIDParams(float kp,
          float	ki, float	kd,
          float	blind_err,
          float	integral_max,
          float	iout_max,
          float	out_max) {
        PID_instance_ = PIDUnit(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
    
  }
    // ��� pid ��ʼ�� ����
  void InitMotorPIDParams(float* pid_buffs)  {
        PID_instance_ = PIDUnit(pid_buffs[0], 
                pid_buffs[1], 
                pid_buffs[2], 
                pid_buffs[3], 
                pid_buffs[4], 
                pid_buffs[5], 
                pid_buffs[6]);
  }
    // ��� pid ��ʼ��
  void InitMotorPIDParams(PIDConfig config)  {
        PID_instance_ = PIDUnit(config.kp_, 
                config.ki_, 
                config.kd_, 
                config.blind_err_, 
                config.integral_max_, 
                config.iout_max_, 
                config.out_max_);
    
  }
    //�������������� pid ��Ԫ��
  void AddPIDUnit(float kp,
            float	ki, float	kd,
            float	blind_err,
            float	integral_max,
            float	iout_max,
            float	out_max) {
    PIDUnit PIDUnits(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
    PIDUnits_.push_back(PIDUnits);
  }
    // ��ȡ PID ��Ԫ������
  size_t GetPIDUnitsCount() const {
      return PIDUnits_.size();
  }
    // ��ȡָ�������� PID ��Ԫ
  const PIDUnit* GetPIDUnit(size_t index) const {
      if (index < PIDUnits_.size()) {
        return &PIDUnits_[index];
      } else {
        return  nullptr;
      }
  }
    // ����ָ�������� PID ��Ԫ�Ĳ���
  void SetPIDUnitParams(size_t index, float kp, float ki, float kd) {
      if (index < PIDUnits_.size()) {
        PIDUnits_[index].kp_ = kp;
        PIDUnits_[index].ki_ = ki;
        PIDUnits_[index].kd_ = kd;
      }
  }
    // �������� err ��Ԥ����
  float SingleLoop(float target, float measure) {
    return PID_instance_.CalcPIDOut(target, measure);
  }
    // �������� err ��Ȧ���Ԥ����
  float SingleLoop(float target, float measure, float cycle) {
    float err;
    PID_instance_.SetPIDErr(target, measure);
    err = PID_instance_.GetPIDErr();
    err = HalfCycle(err, cycle);
    PID_instance_.SetPIDErr(err);
    return PID_instance_.CalcPIDOut();
  }
    // ˫����������
  float DualLoopCascade(PIDUnit* pid_inloop, 
          float measure_inloop, 
          PIDUnit* pid_outloop, 
          float target_outloop, 
          float measure_outloop) {
    float outer_output = pid_outloop->CalcPIDOut(target_outloop, measure_outloop);
    return pid_inloop->CalcPIDOut(outer_output, measure_inloop);
  }
   // ��ȡ��ʼ����Ϣ
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
  /* pid ʵ�� */
  PIDUnit PID_instance_;
  /* �Զ����� */
  std::vector<PIDUnit> PIDUnits_;
  /* ����״̬��� */
  PIDState state_;
  /* ��ʼ����־ */
  PidInit	 init_flag_;
};
}
#endif	/* PID_HPP */
