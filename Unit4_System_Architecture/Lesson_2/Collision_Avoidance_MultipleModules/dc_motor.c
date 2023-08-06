/*
 * dc_motor.c
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */
#include "dc_motor.h"
#include <stdlib.h>
#include <stdio.h>

uint32 DC_Motor_speed=0;
DC_Motor_states_t DC_motor_state_id;
void (*DC_Motor_state)()=STATE(DC_Motor_idle);

void DC_Motor_set_speed(int s){
	//Receive speed from CA
	DC_Motor_speed=s;
	DC_Motor_state=STATE(DC_Motor_running);
	printf("DC Motor receive signal from CA >> Speed= %lu\n",DC_Motor_speed);
}

void DC_Motor_init(){
	printf("DC_init\n");
	/*
	 * initialize modules for drive DC motor
	 */
}

CREATE_STATE(DC_Motor_idle){
	//State name
	DC_motor_state_id=DC_Motor_idle;
	printf("************\n");
	printf("DC_idle\n");
	printf("************\n");
	//State Action
	/* No action.
	 * Keep speed
	 */
	//State Event
	DC_Motor_state=STATE(DC_Motor_idle);
}
CREATE_STATE(DC_Motor_running){
	//State name
	DC_motor_state_id=DC_Motor_running;
	printf("************\n");
	printf("DC_Motor_running\n");
	printf("************\n");
	//State Action
	printf("Set DC motor speed = %lu\n",DC_Motor_speed);
	//PWM_Control_speed(speed);
	//PWM_Control_speed(speed);
	//State Event
	DC_Motor_state=STATE(DC_Motor_idle);
}
