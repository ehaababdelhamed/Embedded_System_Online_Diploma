/*
 * ultrasonic_sensor.c
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */
#include "ultrasonic_sensor.h"
#include <stdlib.h>
#include <stdio.h>

uint32 US_distance=0;
US_states_t US_state_id;
void (*US_state)()=STATE(US_reading);

uint32 US_get_random_distance(uint32 min,uint32 max){
	uint32 US_distance=0;
	US_distance=min+rand()%(max-min+1);
	return US_distance;
}


void US_init(){
	printf("US_init\n");
	/*
	 * Initialize module
	 */

}
CREATE_STATE(US_reading){
	//State Name
	US_state_id=US_reading;
	printf("************\n");
	printf("US_Reading\n");
	printf("************\n");
	//State action
	US_distance=US_get_random_distance(45,55);
	printf("US Send signal to CA >> distance= %lu\n",US_distance);
	US_get_distance(US_distance);
	//State Event
	US_state=STATE(US_reading);
}
