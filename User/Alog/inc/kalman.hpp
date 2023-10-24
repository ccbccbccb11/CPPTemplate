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
#ifndef KALMAN_HPP
#define KALMAN_HPP

#include <Eigen\Dense>

using namespace Eigen;

namespace kalman {
class KalmanFilter {
private:
	int stateSize; //state variable's dimenssion
	int measSize; //measurement variable's dimession
	int uSize; //control variables's dimenssion
	VectorXd x;
	VectorXd z;
	MatrixXd A;
	MatrixXd B;
	VectorXd u;
	MatrixXd P;//coveriance
	MatrixXd H;
	MatrixXd R;//measurement noise covariance
	MatrixXd Q;//process noise covariance
public:
	KalmanFilter(int stateSize_ = 0, int measSize_ = 0, int uSize_=0);
	void init(VectorXd &x_, MatrixXd& P_,MatrixXd& R_, MatrixXd& Q_);
	VectorXd predict(MatrixXd& A_);
	VectorXd predict(MatrixXd& A_, MatrixXd &B_, VectorXd &u_);
	void update(MatrixXd& H_,VectorXd z_meas);
};
/**
   * @brief 构造函数，对动态矩阵确定分配的大小，并初始化为全零
   * 
   */
KalmanFilter::KalmanFilter(int stateSize_, int measSize_, int uSize_) : 
    stateSize(stateSize_), measSize(measSize_), uSize(uSize_) {
	if (stateSize == 0 || measSize == 0) {
		while (1)
      continue;
	}
	x.resize(stateSize);
	x.setZero();

	A.resize(stateSize, stateSize);
	A.setIdentity();

	u.resize(uSize);
	u.transpose();
	u.setZero();

	B.resize(stateSize, uSize);
	B.setZero();

	P.resize(stateSize, stateSize);
	P.setIdentity();

	H.resize(measSize, stateSize);
	H.setZero();

	z.resize(measSize);
	z.setZero();

	Q.resize(stateSize, stateSize);
	Q.setZero();

	R.resize(measSize, measSize);
	R.setZero();
}
/**
   * @brief 接受外部矩阵的初始化
   * 
   */
void KalmanFilter::init(VectorXd &x_, MatrixXd& P_, MatrixXd& R_, MatrixXd& Q_) {
	x = x_;
	P = P_;
	R = R_;
	Q = Q_;
}
/**
   * @brief 预测函数，更新观测值，接收外部参数
   * 
   */
VectorXd KalmanFilter::predict(MatrixXd& A_, MatrixXd &B_, VectorXd &u_) {
	A = A_;
	B = B_;
	u = u_;
	x = A * x + B * u;
	MatrixXd A_T = A.transpose();
	P = A * P * A_T + Q;
	return x;
}
/**
   * @brief 预测函数，使用内部参数
   * 
   */
VectorXd KalmanFilter::predict(MatrixXd& A_)
{
	A = A_;
	x = A*x;
	MatrixXd A_T = A.transpose();
	P = A*P*A_T + Q; 
	return x;
}
/**
   * @brief 更新函数
   * 
   */
void KalmanFilter::update(MatrixXd& H_,VectorXd z_meas)
{
	H = H_;
	MatrixXd temp1, temp2,Ht;
	Ht = H.transpose();
	temp1 = H*P*Ht + R;
	temp2 = temp1.inverse();//(H*P*H'+R)^(-1)
	MatrixXd K = P*Ht*temp2;
	z = H*x;
	x = x + K*(z_meas-z);
	MatrixXd I = MatrixXd::Identity(stateSize, stateSize);
	P = (I - K*H)*P;
//	cout << "P=" << P << endl;
}
}
#endif  /* KALMAN_HPP */