/*
 * dc_motor.h
 *
 *  Created on: ???/???/????
 *      Author: Ehab Mohamed
 */

#ifndef DC_MOTOR_H_
#define DC_MOTOR_H_

#include "Platform_Types.h"
#include "state.h"

/*******************************************************************************
 *                              Extern Variables                           *
 *******************************************************************************/
extern void (*DC_Motor_state)();
/*******************************************************************************
 *                              Module Data Types                              *
 *******************************************************************************/
typedef enum{
	DC_Motor_idle,DC_Motor_running
}DC_Motor_states_t;
/*******************************************************************************
 *                              Module States                             *
 *******************************************************************************/
void DC_Motor_init();
CREATE_STATE(DC_Motor_idle);
CREATE_STATE(DC_Motor_running);


#endif /* DC_MOTOR_H_ */
