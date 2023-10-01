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
// pid ��ʼ���ź�
typedef enum {
	kPIDEmpty = 0,
	kPIDInit,
} PidInit;
// pid ģʽ�ź�
typedef enum {
	kSpeed,
	kAngle,
	kPosit,
	kPositIn,
	kPositOut,
} PIDMode;
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
	protected:
		float		last_err_;
		float		integral_;
		float		pout_;
		float		iout_;
		float		dout_;
		float		out_;
		PidInit config_init_;
};
// pid ����ϵ����
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
// pid ��Ԫ��
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

class PIDControler {
	public:
		PIDControler() { init_flag_ = kPIDEmpty; }
			// ��� pid ��ʼ�� ����
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
			// ��� pid ��ʼ�� ����
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
			// ��� pid ��ʼ��
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
			// ����speed���� PID ��Ԫ�Ĳ���
    void SetSpeedPIDParams(float kp, float ki, float kd) {
			SpeedPID_.kp_ = kp;
			SpeedPID_.ki_ = ki;
			SpeedPID_.kd_ = kd;
    }
			// ����angle���� PID ��Ԫ�Ĳ���
    void SetAnglePIDParams(float kp, float ki, float kd) {
			AnglePID_.kp_ = kp;
			AnglePID_.ki_ = ki;
			AnglePID_.kd_ = kd;
    }
			// ���� posit inside loop �� PID ��Ԫ�Ĳ���
    void SetPositInPIDParams(float kp, float ki, float kd) {
			PositInPID_.kp_ = kp;
			PositInPID_.ki_ = ki;
			PositInPID_.kd_ = kd;
    }
			// ���� posit outside loop �� PID ��Ԫ�Ĳ���
    void SetPositOutPIDParams(float kp, float ki, float kd) {
			PositOutPID_.kp_ = kp;
			PositOutPID_.ki_ = ki;
			PositOutPID_.kd_ = kd;
    }
			// ����speed���� PI ��Ԫ�Ĳ���
    void SetSpeedPIDParams(float kp, float ki) {
			SpeedPID_.kp_ = kp;
			SpeedPID_.ki_ = ki;
    }
			// ����angle���� PI ��Ԫ�Ĳ���
    void SetAnglePIDParams(float kp, float ki) {
			AnglePID_.kp_ = kp;
			AnglePID_.ki_ = ki;
    }
			// ���� posit inside loop �� PI ��Ԫ�Ĳ���
    void SetPositInPIDParams(float kp, float ki) {
			PositInPID_.kp_ = kp;
			PositInPID_.ki_ = ki;
    }
			// ���� posit outside loop �� PI ��Ԫ�Ĳ���
    void SetPositOutPIDParams(float kp, float ki) {
			PositOutPID_.kp_ = kp;
			PositOutPID_.ki_ = ki;
    }
			// �������� err ��Ԥ����
		float SingleLoop(PIDUnit& pid, float target, float measure) {
			return pid.CalcPIDOut(target, measure);
		}
			// �������� err ��Ȧ���Ԥ����
		float SingleLoop(PIDUnit& pid_, float target, float measure, float half_cycle) {
			pid_.SetPIDErr(target,measure);
			pid_.err_ = HalfCycle(pid_.err_, half_cycle);
			return pid_.CalcPIDOut();
		}
			// ˫����������
		float DualLoopCascade(PIDUnit& pid_inloop, 
						float measure_inloop, 
						PIDUnit& pid_outloop, 
						float target_outloop, 
						float measure_outloop) {
			float outer_output = pid_outloop.CalcPIDOut(target_outloop, measure_outloop);
			return pid_inloop.CalcPIDOut(outer_output,measure_inloop);
		}
			// ����ٶȻ�
		float Speed(motor::Motor pid_motor) {
			int16_t meusure_speed = pid_motor.GetSpeed();
			float tagert_speed = pid_motor.GetPIDSpeedTarget();
			return SingleLoop(SpeedPID_, tagert_speed, meusure_speed);
		}
			// ����ǶȻ�
		float Angle(motor::Motor pid_motor, float half_cycle) {
			int16_t meusure_angle = pid_motor.GetAngle();
			float tagert_angle = pid_motor.GetPIDAngleTarget();
			return SingleLoop(AnglePID_, tagert_angle, meusure_angle, half_cycle);
		}
			// ���λ�û�
		float Posit(motor::Motor pid_motor) {
			int16_t meusure_speed = pid_motor.GetSpeed();
			int32_t angle_sum = pid_motor.GetAngleSum();
			float tagert_posit = pid_motor.GetPIDPositTarget();
			return DualLoopCascade(PositInPID_, meusure_speed,
										PositOutPID_, tagert_posit, angle_sum);
		}
					
	private:
		/* ����� */
		PIDUnit SpeedPID_;
		PIDUnit AnglePID_;
		PIDUnit PositInPID_;
		PIDUnit PositOutPID_;
		/* �Զ����� */
		std::vector<PIDUnit> PIDUnits_;
		/* ����״̬��� */
		PIDState state_;
		/* ��ʼ����־ */
		PidInit	 init_flag_;
};
}
#endif  /* __cplusplus */
#endif	/* PID_HPP */
