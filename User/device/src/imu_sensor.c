/* Includes ------------------------------------------------------------------*/
#include "imu_sensor.h"
#include "driver_io.hpp"
#include "driver_haltick.hpp"
#include "BMI.h"

/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
void imu_init(imu_sensor_t *self);
void imu_heart_beat(work_state_t *heart);
extern void imu_update(imu_sensor_t *self);
extern void transform_init(void);
/* Private typedef -----------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
extern float Kp;
struct bmi2_dev bmi270;

bmi_t bmi_client = {
	.dev = &bmi270,
	.init = &bmi_init,	
};

imu_info_t imu_info = {
	.offset_info.gx_offset = 0.f,
	.offset_info.gy_offset = 0.f,
	.offset_info.gz_offset = 0.f,
	.kp = &Kp,
	.init_flag = 0,
};
/* Exported variables --------------------------------------------------------*/
imu_sensor_t imu_sensor = {
	.bmi = &bmi_client,
	.info = &imu_info,
	.driver.tpye = DR_SPI2,
	
	.init = &imu_init,
	.update = &imu_update,
  .heart_beat = &imu_heart_beat,
	
	.work_state.dev_state = kImuOffline,
	.work_state.cali_end = 0,	
	.work_state.offline_max_cnt = 50,	
	.work_state.err_cnt = 0,
};
/* Private functions ---------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/
uint8_t init_cnt = 200;
void imu_init(struct imu_struct *self) {
	self->work_state.dev_state = kImuOffline;

	self->bmi->read = bmi2_get_regs;
  self->bmi->write = bmi2_set_regs;
	
	if (self->driver.tpye == DR_SPI1 || self->driver.tpye == DR_SPI2 || 
			self->driver.tpye == DR_SPI3) {
		self->bmi->drive_type = BMI2_SPI_INTF;
		if (self->driver.tpye == DR_SPI2) {
			self->bmi->device_aces = BMI2_INT_ACES;
		} else if (self->driver.tpye == DR_SPI1) {
			self->bmi->device_aces = BMI2_EXT_ACES;
		}
	} else if (self->driver.tpye == DR_IIC) {
		self->bmi->drive_type = BMI2_I2C_INTF;
	}
	
	self->work_state.init_code = self->bmi->init(self->bmi->dev,self->bmi->drive_type,self->bmi->device_aces);

	while(self->work_state.init_code) {
		if (++self->work_state.err_cnt == init_cnt) {
			__set_FAULTMASK(1); 
			NVIC_SystemReset();
			break;
		}
		self->work_state.err_code = IMU_INIT_ERR;
		self->work_state.init_code = self->bmi->init(self->bmi->dev,self->bmi->drive_type,self->bmi->device_aces);
	}	

	if (self->work_state.init_code == 0) {
		self->work_state.dev_state = kImuOnline;
		self->work_state.err_code = IMU_NONE_ERR;
//		self->work_state.err_cnt = 0;
		self->info->init_flag = 1;
		
		transform_init();
		
		imu_sensor.info->offset_info.gx_offset = 0.f;
		imu_sensor.info->offset_info.gy_offset = 0.f;
		imu_sensor.info->offset_info.gz_offset = 0.f;
	} else {
		self->work_state.dev_state = kImuOffline;
		self->work_state.err_code = IMU_INIT_ERR;
		self->work_state.offline_cnt = self->work_state.offline_max_cnt;
		self->info->init_flag = 0;
	}
}

void imu_heart_beat(work_state_t *heart) {
	heart->offline_cnt++;
	if (heart->offline_cnt > heart->offline_max_cnt) {
		heart->offline_cnt = heart->offline_max_cnt;
		heart->dev_state = kImuOffline;
	} else  {
		if (heart->dev_state == kImuOffline)
			heart->dev_state = kImuOnline;
	}
}










