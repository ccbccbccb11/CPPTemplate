/*
*   实体例子        !!!!TODOTODO!!!!!!
*	
*	2023.10.2
*   测试
*/


#include "example.hpp"

Gimbal gimbal;

float tar=0;
void Gimbal_ControlTask(void) {
    gimbal.SetTarget(tar);
    gimbal.ControlTask();
}

void Gimbal_HeartBeat(void) {
    gimbal.HeartBeat();
}