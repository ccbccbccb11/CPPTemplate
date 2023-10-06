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
 
#ifndef MOTOR_H
#define MOTOR_H

#include "motor_def.hpp"
#include "utils.h"

#ifdef __cplusplus
	extern "C" {
#endif  /* __cplusplus */
			/*C code*/
#ifdef __cplusplus
	}
#endif  /* __cplusplus */

#ifdef __cplusplus
			/*C++ code*/
namespace motor {
// Motor Class
class	Motor {
	public:
			// 构造函数
		Motor() { stateinfo_.init_flag_ = kMotorEmpty; }
		Motor(MotorDriver drive_type,\
					MotorType motor_type, uint32_t rx_id) {
			idinfo_.rx_id_ = rx_id;
			idinfo_.drive_type_ = drive_type;
			idinfo_.motor_type_ = motor_type;
			if (idinfo_.motor_type_ == kGM6020) {
				if ((idinfo_.rx_id_ - 0x205U) < 4) { 
					idinfo_.tx_id_ = 0x1FF; 
				} else { 
					idinfo_.tx_id_ = 0x2FF; 
				}
				idinfo_.buff_p_ = (idinfo_.rx_id_ - 0x205U)%4;
			} else if (idinfo_.motor_type_ == kRM3508) {
				if ((idinfo_.rx_id_ - 0x201U) < 4) { 
					idinfo_.tx_id_ = 0x200; 
				} else { 
					idinfo_.tx_id_ = 0x1FF; 
				}
				idinfo_.buff_p_ = (idinfo_.rx_id_ - 0x201U)%4;
			} else if (idinfo_.motor_type_ == kRM2006) {
				if ((idinfo_.rx_id_ - 0x201U) < 4) { 
					idinfo_.tx_id_ = 0x200; 
				} else { 
					idinfo_.tx_id_ = 0x1FF; 
				}
				idinfo_.buff_p_ = (idinfo_.rx_id_ - 0x201U)%4;
			}
			stateinfo_.work_state_ = kMotorOffline;
			stateinfo_.offline_cnt_max_ = 100;
			stateinfo_.offline_cnt_ = stateinfo_.offline_cnt_max_;
			stateinfo_.init_flag_ = kMotorInit;
		}
			// 心跳包
		void HeartBeat(void) {
			stateinfo_.offline_cnt_ ++;
			if (stateinfo_.offline_cnt_ > stateinfo_.offline_cnt_max_) {
				stateinfo_.offline_cnt_ = stateinfo_.offline_cnt_max_;
				stateinfo_.work_state_ = kMotorOffline;
			} else {
				if (stateinfo_.work_state_ == kMotorOffline) stateinfo_.work_state_ = kMotorOnline;
			}
		}
			// 输出角度
		uint16_t GetAngle(void) {
			return rxinfo_.angle_;
		}
			// 输出速度
		int16_t GetSpeed(void) {
			return rxinfo_.speed_;
		}
			// 输出电流
		int16_t GetCurrent(void) {
			return rxinfo_.current_;
		}
			// 输出转矩
		int16_t GetTorque(void) {
			return rxinfo_.torque_;
		}
			// 输出温度
		uint8_t GetTemperature(void) {
			return rxinfo_.temperature_;
		}
			// 输出总角度
		int16_t GetAngleSum(void) {	
			return rxinfo_.angle_sum_;
		}
			// can 中读取角度
		uint16_t CANGetAngle(uint8_t* rxbuff) {
			uint16_t angle;
			angle = (uint16_t)(rxbuff[0] << 8| rxbuff[1]);
			return angle;
		}
			// can 中读取速度
		int16_t CANGetSpeed(uint8_t* rxbuff) {
			int16_t speed;
			speed = (int16_t)(rxbuff[2] << 8| rxbuff[3]);
			return speed;
		}
			// can 中读取电流
		int16_t CANGetCurrent(uint8_t* rxbuff) {
			int16_t current;
			current = (int16_t)(rxbuff[4] << 8 | rxbuff[5]);
			return current;
		}
			// can 中读取转矩
		int16_t CANGetTorque(uint8_t* rxbuff) {
			int16_t torque;
			torque = (int16_t)(rxbuff[4] << 8 | rxbuff[5]);
			return torque;
		}
			// can 中读取温度
		uint8_t CANGetTemperature(uint8_t* rxbuff) {
			uint8_t temperature;
			temperature = rxbuff[6];
			return temperature;
		}
			// 读取 RM 电机 can 报文
		void GetCANRxMessage(uint8_t* rxbuff) {
			int16_t err;
			if (rxbuff == nullptr)
				return;
			if (stateinfo_.init_flag_ == kMotorEmpty)
				return;
			rxinfo_.angle_ = CANGetAngle(rxbuff);
			rxinfo_.speed_ = CANGetSpeed(rxbuff);
			rxinfo_.current_ = CANGetCurrent(rxbuff);
			rxinfo_.torque_ = CANGetTorque(rxbuff);
			rxinfo_.temperature_ = CANGetTemperature(rxbuff);
			if(!rxinfo_.angle_prev_ && !rxinfo_.angle_sum_) {
				err = 0;
			} else {
				err = rxinfo_.angle_ - rxinfo_.angle_prev_;
			}
			if(math::Abs(err) > 4095) {
				if(err >= 0) {
					rxinfo_.angle_sum_ += -8191 + err;
				} else {
					rxinfo_.angle_sum_ += 8191 + err;
				}
			} else {
				rxinfo_.angle_sum_ += err;
			}
			rxinfo_.angle_prev_ = rxinfo_.angle_;		
			stateinfo_.offline_cnt_ = 0;
		}
			// RM can 发送
		void AddCANTxMessage(uint8_t *txbuff) {
			uint8_t pos8;
			pos8 = idinfo_.buff_p_*2;
			txbuff[pos8] 	 = (uint8_t)((int16_t)txinfo_.motor_out_ >> 8);
			txbuff[pos8+1] = (uint8_t)((int16_t)txinfo_.motor_out_);
		}
		 // 输出 pid 速度目标值
		float GetPIDSpeedTarget(void) {
			return pidinfo_.tagert_speed_;
		}
		 // 输出 pid 角度目标值
		float GetPIDAngleTarget(void) {
			return pidinfo_.tagert_angle_;
		}
		 // 输出 pid 位置目标值
		float GetPIDPositTarget(void) {
			return pidinfo_.tagert_posit_;
		}
		 // 设置 pid 速度目标值
		void SetPIDSpeedTarget(float tagert_speed) {
			pidinfo_.tagert_speed_ = tagert_speed;
		}
		 // 设置 pid 角度目标值
		void SetPIDAngleTarget(float tagert_angle) {
			pidinfo_.tagert_angle_ = tagert_angle;
		}
		 // 设置 pid 位置目标值
		void SetPIDPositTarget(float tagert_posit) {
			pidinfo_.tagert_posit_ = tagert_posit;
		}
		 // 设置电机输出
		void SetMotorOut(float motor_out) {
			txinfo_.motor_out_ = motor_out;
		}
		 // 输出 rx id 
		uint32_t GetRxId(void) {
			return idinfo_.rx_id_;
		}
		 // 输出 tx id
		uint32_t GetTxId(void) {
			return idinfo_.tx_id_;
		}
		 // 输出 驱动类型
		MotorDriver GetDriveType(void) {
			return idinfo_.drive_type_;
		}
		 // 输出 电机状态
		MotorInit GetState(void) {
			return stateinfo_.init_flag_;
		}
		
	private:
		RxInfo rxinfo_;
		TxInfo txinfo_;
		PIDInfo pidinfo_;
		IDInfo idinfo_;
		StateInfo stateinfo_;
};
}
#endif  /* __cplusplus */
#endif	/*MOTOR_HPP*/









