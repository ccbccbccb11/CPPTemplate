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
 
#include "device.hpp"
#include "imu_sensor.h"
#include "dji_motor.hpp"

using namespace djimtr;
/**
 * @note ���ܴ���ȫ�ֶ���ʱ�ȵ���Ĭ�Ϲ��캯����Ȼ�����ں�����
 *       �������ع��캯������thisָ�봫��������������
 *       ��Ϊ��ʱ������thisָ��ֻ���ڶ��Ϸ������ʱ������
 *       ������󵥴���ֵ������ȫ�ֱ���������ִ����������ˡ�
 *       �����������ַ����Ļ�ȫ�ֶ������뺯������ʱ��this����һ������
 *       
 */
MotorInitConfig GM6020_test_config = {
  .motor_type = kGM6020,
	.can_config = {
		.can_handle = &hcan1,
		.rx_id = 0x206,
	},
	.PID_speed_config = {
    .kp = 0,
    .ki = 10,
    .kd = 0,
    .blind_err = 0 ,
    .integral_max = 2000,
    .iout_max = 20000,
    .out_max = 20000,
	},
  .loop = kSpeedLoop,
};
DjiMotor M6020_test = DjiMotor(&GM6020_test_config);
void Device_Init(void) {
//	imu_sensor.init(&imu_sensor);
}

void Device_HeartBeat(void) {
	HeartBeat::TickTask();
}

void Device_Work(void) {
	DjiMotor::ControlTask();
//	imu_sensor.update(&imu_sensor);
}