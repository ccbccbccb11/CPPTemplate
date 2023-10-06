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
			// ���캯��
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
			// ������
		void HeartBeat(void) {
			stateinfo_.offline_cnt_ ++;
			if (stateinfo_.offline_cnt_ > stateinfo_.offline_cnt_max_) {
				stateinfo_.offline_cnt_ = stateinfo_.offline_cnt_max_;
				stateinfo_.work_state_ = kMotorOffline;
			} else {
				if (stateinfo_.work_state_ == kMotorOffline) stateinfo_.work_state_ = kMotorOnline;
			}
		}
			// ����Ƕ�
		uint16_t GetAngle(void) {
			return rxinfo_.angle_;
		}
			// ����ٶ�
		int16_t GetSpeed(void) {
			return rxinfo_.speed_;
		}
			// �������
		int16_t GetCurrent(void) {
			return rxinfo_.current_;
		}
			// ���ת��
		int16_t GetTorque(void) {
			return rxinfo_.torque_;
		}
			// ����¶�
		uint8_t GetTemperature(void) {
			return rxinfo_.temperature_;
		}
			// ����ܽǶ�
		int16_t GetAngleSum(void) {	
			return rxinfo_.angle_sum_;
		}
			// can �ж�ȡ�Ƕ�
		uint16_t CANGetAngle(uint8_t* rxbuff) {
			uint16_t angle;
			angle = (uint16_t)(rxbuff[0] << 8| rxbuff[1]);
			return angle;
		}
			// can �ж�ȡ�ٶ�
		int16_t CANGetSpeed(uint8_t* rxbuff) {
			int16_t speed;
			speed = (int16_t)(rxbuff[2] << 8| rxbuff[3]);
			return speed;
		}
			// can �ж�ȡ����
		int16_t CANGetCurrent(uint8_t* rxbuff) {
			int16_t current;
			current = (int16_t)(rxbuff[4] << 8 | rxbuff[5]);
			return current;
		}
			// can �ж�ȡת��
		int16_t CANGetTorque(uint8_t* rxbuff) {
			int16_t torque;
			torque = (int16_t)(rxbuff[4] << 8 | rxbuff[5]);
			return torque;
		}
			// can �ж�ȡ�¶�
		uint8_t CANGetTemperature(uint8_t* rxbuff) {
			uint8_t temperature;
			temperature = rxbuff[6];
			return temperature;
		}
			// ��ȡ RM ��� can ����
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
			// RM can ����
		void AddCANTxMessage(uint8_t *txbuff) {
			uint8_t pos8;
			pos8 = idinfo_.buff_p_*2;
			txbuff[pos8] 	 = (uint8_t)((int16_t)txinfo_.motor_out_ >> 8);
			txbuff[pos8+1] = (uint8_t)((int16_t)txinfo_.motor_out_);
		}
		 // ��� pid �ٶ�Ŀ��ֵ
		float GetPIDSpeedTarget(void) {
			return pidinfo_.tagert_speed_;
		}
		 // ��� pid �Ƕ�Ŀ��ֵ
		float GetPIDAngleTarget(void) {
			return pidinfo_.tagert_angle_;
		}
		 // ��� pid λ��Ŀ��ֵ
		float GetPIDPositTarget(void) {
			return pidinfo_.tagert_posit_;
		}
		 // ���� pid �ٶ�Ŀ��ֵ
		void SetPIDSpeedTarget(float tagert_speed) {
			pidinfo_.tagert_speed_ = tagert_speed;
		}
		 // ���� pid �Ƕ�Ŀ��ֵ
		void SetPIDAngleTarget(float tagert_angle) {
			pidinfo_.tagert_angle_ = tagert_angle;
		}
		 // ���� pid λ��Ŀ��ֵ
		void SetPIDPositTarget(float tagert_posit) {
			pidinfo_.tagert_posit_ = tagert_posit;
		}
		 // ���õ�����
		void SetMotorOut(float motor_out) {
			txinfo_.motor_out_ = motor_out;
		}
		 // ��� rx id 
		uint32_t GetRxId(void) {
			return idinfo_.rx_id_;
		}
		 // ��� tx id
		uint32_t GetTxId(void) {
			return idinfo_.tx_id_;
		}
		 // ��� ��������
		MotorDriver GetDriveType(void) {
			return idinfo_.drive_type_;
		}
		 // ��� ���״̬
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









