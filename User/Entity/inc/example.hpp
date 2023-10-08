// #ifndef EXAMPLE_HPP
// #define EXAMPLE_HPP


// #include "entity.hpp"

// #ifdef __cplusplus
// 	extern "C" {
// #endif  /* __cplusplus */
// 		/* C code */
// #ifdef __cplusplus
// 	}
// #endif  /* __cplusplus */
	
// #ifdef __cplusplus
// 		/* C++ code */
// class Gimbal : public entity::Entity<1> {
// private:
// 	/* data */
// 	float target_;
// 	int16_t output_;
// 	int16_t speed_;
// public:
// 	Gimbal() : entity::Entity<1>(&test_motor) {}
// 	// 重新声明实现基类的纯虚函数
// 	void PIDCalculating(void) override {
// 		/* 速度环 */
// 		 target_ = math::limit(target_, 0.f, 2000.f);
// 		 test_motor.SetPIDSpeedTarget(target_);
// 		 output_ = test_pid.Speed(&test_motor);
// 		/* 位置环 */
// //		target_ = math::limit(target_, 0.f, 81920.f);
// //		test_motor.SetPIDPositTarget(target_);
// //		output_ = test_pid.Posit(&test_motor);
// 		/* 位置环 */
// //		target_ = math::limit(target_, 0.f, 8192.f);
// //		test_motor.SetPIDAngleTarget(target_);
// //		output_ = test_pid.Angle(&test_motor,8192.f);
// 	}

// 	void PIDOutput(void) override {
// 		test_motor.SetMotorOut(output_);
// 	}

// 	void ControlTask(void) override {
// 		InfoUpdate();
// 		PIDCalculating();
// 		PIDOutput();
// 	}

// 	void InfoUpdate(void) override {
// 		speed_ = test_motor.GetSpeed();
// 	}
	
// 	void HeartBeat(void) override {
// 		test_motor.HeartBeat();
// 	}

// 	void SetTarget(float target) {
// 		target_ = target;
// 	}
// };

// void Gimbal_ControlTask(void);
// void Gimbal_HeartBeat(void);
// #endif
// #endif
