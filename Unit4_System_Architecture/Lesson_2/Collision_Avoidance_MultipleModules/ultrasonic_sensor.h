/******************************************************************************
 * File Name: collision_avoidance.h
 * Description: Header file file for Ultrasonic Obstacle-avoiding Robot application
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/

#ifndef ULTRASONIC_SENSOR_H_
#define ULTRASONIC_SENSOR_H_


#include "Platform_Types.h"
#include "state.h"

/*******************************************************************************
 *                              Extern Variables                           *
 *******************************************************************************/
extern void (*US_state)();
/*******************************************************************************
 *                              Module Data Types                              *
 *******************************************************************************/
typedef enum{
	US_reading
}US_states_t;
/*******************************************************************************
 *                              Module States                             *
 *******************************************************************************/
void US_init();
CREATE_STATE(US_reading);




#endif /* ULTRASONIC_SENSOR_H_ */
