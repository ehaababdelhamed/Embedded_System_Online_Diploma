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
uint32 US_get_random_distance();

/*******************************************************************************
 *                              States Definition                              *
 ******************************************************************************/

CREATE_STATE(CA_waiting){
	//State name
	CA_state_id=CA_waiting;
	printf("************\n");
	printf("CA_waiting\n");
	printf("************\n");
	//state action
	speed=0;
	//DC_motor_set_speed(speed);
	printf(">> Set speed = %lu \n",speed);
	distance=US_get_random_distance(45,55);
	printf(">> Read distance = %lu\n",distance);
	//State Event
	printf(">> Check Event\n");
	(distance <= threshold) ? (CA_state=STATE(CA_waiting)): (CA_state=STATE(CA_driving)) ;
}

CREATE_STATE(CA_driving){
	//State name
	CA_state_id=CA_driving;
	printf("************\n");
	printf("CA_driving\n");
	printf("************\n");
	//state action
	speed=30;
	//DC_motor_set_speed(speed);
	printf(">> Set speed = %lu\n",speed);
	distance=US_get_random_distance(45,55);
	printf(">> Read distance = %lu\n",distance);
	//State Event
	printf(">> Check Event\n");
	(distance <= threshold) ? (CA_state=STATE(CA_waiting)): (CA_state=STATE(CA_driving)) ;
}

uint32 US_get_random_distance(uint32 min,uint32 max){
	uint32 US_distance=0;
	US_distance=min+rand()%(max-min+1);
	return US_distance;
}

