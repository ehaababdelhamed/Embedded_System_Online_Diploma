/******************************************************************************
 * File Name: collision_avoidance.h
 * Description: Header file file for Ultrasonic Obstacle-avoiding Robot application
 * Author: Ehab Mohamed Abdelhamed
 ******************************************************************************/
#ifndef COLLISION_AVOIDANCE_H_
#define COLLISION_AVOIDANCE_H_

#include "Platform_Types.h"
#include "state.h"

/*******************************************************************************
 *                              User Configuration                           *
 *******************************************************************************/
#define REQ_THRESHOLD (uint32)50

/*******************************************************************************
 *                              Extern Variables                           *
 *******************************************************************************/
extern void (*CA_state)();
/*******************************************************************************
 *                              Module Data Types                              *
 *******************************************************************************/
typedef enum{
	CA_waiting,CA_driving
}CA_states_t;
/*******************************************************************************
 *                              Module States                             *
 *******************************************************************************/
CREATE_STATE(CA_waiting);
CREATE_STATE(CA_driving);


#endif /* COLLISION_AVOIDANCE_H_ */
