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
#include "motor.hpp"
#include "utils.h"
#include <iostream>
#include <vector>

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/*C code*/
#ifdef __cplusplus
	}
#endif  /* __cplusplus */
	
#ifdef __cplusplus
			/*C++ code*/
namespace pid {
/**
 ******************************************************************************
 * @note    
 ******************************************************************************
 */
// x > max || x < min --> x = max || min 
template <typename T> T Constrain(T x, T max, T min) {
	if (x > max) {
		return max;
	} else if (x < min) {
		return min;
	} else {
		return x;
	}
}
// x > max || x < min --> x = max || min 
template <typename T> bool Contain(T x, T max, T min) {
	if (x < max && x > min) {
		return true;
	} else {
		return false;
	}
}
// Periodic processing
template <typename T> T OneCycle(T tar, T cycle) {
	if (tar < 0) {
		tar += cycle;
	} else {
		tar -= cycle;
	}
	return tar;
}
// Half circle processing
template <typename T> T HalfCycle(T angle, T max) {
	if (math::Abs(angle) > max/2) {
		if (angle >= 0) {
			angle -= max;
		} else {
			angle += max;
		}
	}
	return angle;
}
// pid 初始化信号
typedef enum {
	kPIDEmpty = 0,
	kPIDInit,
} PidInit;
// pid 模式信号
typedef enum {
	kSpeed,
	kAngle,
	kPosit,
	kPositIn,
	kPositOut,
} PIDMode;
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
	protected:
		float		last_err_;
		float		integral_;
		float		pout_;
		float		iout_;
		float		dout_;
		float		out_;
		PidInit config_init_;
};
// pid 配置系数类
class PIDConfid {
	public:
		PIDConfid() {}
		PIDConfid(float	kp,
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
class PIDUnit : public PIDInfo, public PIDConfid {
	public:
		PIDUnit() { config_init_ = kPIDEmpty; }
		PIDUnit(float	kp,
				float	ki,
				float	kd,
				float	blind_err,
				float	integral_max,
				float	iout_max,
				float	out_max) :
			PIDInfo(), 
			PIDConfid(kp, ki, kd,
							blind_err,
							integral_max,
							iout_max,
							out_max) { config_init_ = kPIDInit; }
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

class PIDControler {
	public:
		PIDControler() { init_flag_ = kPIDEmpty; }
			// 电机 pid 初始化 传数
		void InitMotorPIDParams(float kp,
							float	ki, float	kd,
							float	blind_err,
							float	integral_max,
							float	iout_max,
							float	out_max, 
							PIDMode mode)  {
			switch (mode) {
				case kSpeed:
					SpeedPID_ = PIDUnit(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
					break;
				case kAngle:
					AnglePID_ = PIDUnit(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
					break;
				case kPositIn:
					PositInPID_ = PIDUnit(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
					break;
				case kPositOut:
					PositOutPID_ = PIDUnit(kp, ki, kd, blind_err, integral_max, iout_max, out_max);
					break;
				default:
					state_ = kParamErr;
					break;
			}
		}
			// 电机 pid 初始化 数组
		void InitMotorPIDParams(float* pid_buffs, PIDMode mode)  {
			switch (mode) {
				case kSpeed:
					SpeedPID_ = PIDUnit(pid_buffs[0], 
									pid_buffs[1], 
									pid_buffs[2], 
									pid_buffs[3], 
									pid_buffs[4], 
									pid_buffs[5], 
									pid_buffs[6]);
					break;
				case kAngle:
					AnglePID_ = PIDUnit(pid_buffs[0], 
									pid_buffs[1], 
									pid_buffs[2], 
									pid_buffs[3], 
									pid_buffs[4], 
									pid_buffs[5], 
									pid_buffs[6]);
					break;
				case kPositIn:
					PositInPID_ = PIDUnit(pid_buffs[0], 
									pid_buffs[1], 
									pid_buffs[2], 
									pid_buffs[3], 
									pid_buffs[4], 
									pid_buffs[5], 
									pid_buffs[6]);
					break;
				case kPositOut:
					PositOutPID_ = PIDUnit(pid_buffs[0], 
									pid_buffs[1], 
									pid_buffs[2], 
									pid_buffs[3], 
									pid_buffs[4], 
									pid_buffs[5], 
									pid_buffs[6]);
					break;
				default:
					state_ = kParamErr;
					break;
			}
		}
			// 电机 pid 初始化
		void InitMotorPIDParams(PIDConfid config, PIDMode mode)  {
			switch (mode) {
				case kSpeed:
					SpeedPID_ = PIDUnit(config.kp_, 
									config.ki_, 
									config.kd_, 
									config.blind_err_, 
									config.integral_max_, 
									config.iout_max_, 
									config.out_max_);
					break;
				case kAngle:
					AnglePID_ = PIDUnit(config.kp_, 
									config.ki_, 
									config.kd_, 
									config.blind_err_, 
									config.integral_max_, 
									config.iout_max_, 
									config.out_max_);
					break;
				case kPositIn:
					PositInPID_ = PIDUnit(config.kp_, 
									config.ki_, 
									config.kd_, 
									config.blind_err_, 
									config.integral_max_, 
									config.iout_max_, 
									config.out_max_);
					break;
				case kPositOut:
					PositOutPID_ = PIDUnit(config.kp_, 
									config.ki_, 
									config.kd_, 
									config.blind_err_, 
									config.integral_max_, 
									config.iout_max_, 
									config.out_max_);
					break;
				default:
					state_ = kParamErr;
					break;
			}
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
			// 设置speed环的 PID 单元的参数
    void SetSpeedPIDParams(float kp, float ki, float kd) {
			SpeedPID_.kp_ = kp;
			SpeedPID_.ki_ = ki;
			SpeedPID_.kd_ = kd;
    }
			// 设置angle环的 PID 单元的参数
    void SetAnglePIDParams(float kp, float ki, float kd) {
			AnglePID_.kp_ = kp;
			AnglePID_.ki_ = ki;
			AnglePID_.kd_ = kd;
    }
			// 设置 posit inside loop 的 PID 单元的参数
    void SetPositInPIDParams(float kp, float ki, float kd) {
			PositInPID_.kp_ = kp;
			PositInPID_.ki_ = ki;
			PositInPID_.kd_ = kd;
    }
			// 设置 posit outside loop 的 PID 单元的参数
    void SetPositOutPIDParams(float kp, float ki, float kd) {
			PositOutPID_.kp_ = kp;
			PositOutPID_.ki_ = ki;
			PositOutPID_.kd_ = kd;
    }
			// 设置speed环的 PI 单元的参数
    void SetSpeedPIDParams(float kp, float ki) {
			SpeedPID_.kp_ = kp;
			SpeedPID_.ki_ = ki;
    }
			// 设置angle环的 PI 单元的参数
    void SetAnglePIDParams(float kp, float ki) {
			AnglePID_.kp_ = kp;
			AnglePID_.ki_ = ki;
    }
			// 设置 posit inside loop 的 PI 单元的参数
    void SetPositInPIDParams(float kp, float ki) {
			PositInPID_.kp_ = kp;
			PositInPID_.ki_ = ki;
    }
			// 设置 posit outside loop 的 PI 单元的参数
    void SetPositOutPIDParams(float kp, float ki) {
			PositOutPID_.kp_ = kp;
			PositOutPID_.ki_ = ki;
    }
			// 单环计算 err 无预处理
		float SingleLoop(PIDUnit& pid, float target, float measure) {
			return pid.CalcPIDOut(target, measure);
		}
			// 单环计算 err 半圈检测预处理
		float SingleLoop(PIDUnit& pid_, float target, float measure, float half_cycle) {
			pid_.SetPIDErr(target,measure);
			pid_.err_ = HalfCycle(pid_.err_, half_cycle);
			return pid_.CalcPIDOut();
		}
			// 双环串级计算
		float DualLoopCascade(PIDUnit& pid_inloop, 
						float measure_inloop, 
						PIDUnit& pid_outloop, 
						float target_outloop, 
						float measure_outloop) {
			float outer_output = pid_outloop.CalcPIDOut(target_outloop, measure_outloop);
			return pid_inloop.CalcPIDOut(outer_output,measure_inloop);
		}
			// 电机速度环
		float Speed(motor::Motor pid_motor) {
			int16_t meusure_speed = pid_motor.GetSpeed();
			float tagert_speed = pid_motor.GetPIDSpeedTarget();
			return SingleLoop(SpeedPID_, tagert_speed, meusure_speed);
		}
			// 电机角度环
		float Angle(motor::Motor pid_motor, float half_cycle) {
			int16_t meusure_angle = pid_motor.GetAngle();
			float tagert_angle = pid_motor.GetPIDAngleTarget();
			return SingleLoop(AnglePID_, tagert_angle, meusure_angle, half_cycle);
		}
			// 电机位置环
		float Posit(motor::Motor pid_motor) {
			int16_t meusure_speed = pid_motor.GetSpeed();
			int32_t angle_sum = pid_motor.GetAngleSum();
			float tagert_posit = pid_motor.GetPIDPositTarget();
			return DualLoopCascade(PositInPID_, meusure_speed,
										PositOutPID_, tagert_posit, angle_sum);
		}
					
	private:
		/* 电机用 */
		PIDUnit SpeedPID_;
		PIDUnit AnglePID_;
		PIDUnit PositInPID_;
		PIDUnit PositOutPID_;
		/* 自定义用 */
		std::vector<PIDUnit> PIDUnits_;
		/* 大类状态检测 */
		PIDState state_;
		/* 初始化标志 */
		PidInit	 init_flag_;
};
}
#endif  /* __cplusplus */
#endif	/* PID_HPP */
