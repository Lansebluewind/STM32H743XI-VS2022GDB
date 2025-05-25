#ifndef __SYSTICK_H
#define __SYSTICK_H

#include "stm32h7xx.h"

typedef unsigned int u32;

extern void SysTick_Init(void);
extern void Delay_us(__IO u32 nTime);
extern void TimingDelay_Decrement(void);
#define Delay_ms(x)     Delay_us(100*x)	 //ms
#define HAL_Delay(x)    Delay_us(100*x)	 //ms
#define Sleep(x)        Delay_us(100*x)   //ms

#endif /* __SYSTICK_H */
