/******************************************************************************
 * File Name: collision_avoidance.c
 * Description: Source file file for Ultrasonic Obstacle-avoiding Robot application
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/

#include "collision_avoidance.h"
#include <stdlib.h>
#include <stdio.h>


/*******************************************************************************
 *                         Module Global Variables                             *
 ******************************************************************************/
uint32 distance=0;
uint32 speed =0;
uint32 threshold = REQ_THRESHOLD;
CA_states_t CA_state_id=CA_waiting;
void (*CA_state)()=STATE(CA_waiting);

/*******************************************************************************
 *                              States Definition                              *
 ******************************************************************************/

void US_get_distance(int d){
	distance=d;
	printf("CA receive signal from US >> distance= %lu\n",distance);
	//Event
	(distance <= threshold) ? (CA_state=STATE(CA_waiting)): (CA_state=STATE(CA_driving));
}

CREATE_STATE(CA_waiting){
	//State name
	CA_state_id=CA_waiting;
	printf("************\n");
	printf("CA_waiting\n");
	printf("************\n");
	//state action
	speed=0;
	printf("CA Send signal to DC Motor >> speed= %lu\n",speed);;
	DC_Motor_set_speed(speed);
}

CREATE_STATE(CA_driving){
	//State name
	CA_state_id=CA_driving;
	printf("************\n");
	printf("CA_driving\n");
	printf("************\n");
	//state action
	speed=30;
	printf("CA Send signal to DC Motor >> speed= %lu\n",speed);;
	DC_Motor_set_speed(speed);
}
