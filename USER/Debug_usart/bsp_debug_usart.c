/**
  ******************************************************************************
  * @file    bsp_debug_usart.c
  * @author  fire
  * @version V1.0
  * @date    2016-xx-xx
  * @brief   使用串口1，重定向c库printf函数到usart端口，中断接收模式
  ******************************************************************************
  * @attention
  *
  * 实验平台:野火  STM32 H743 开发板  
  * 论坛    :http://www.firebbs.cn
  * 淘宝    :http://firestm32.taobao.com
  *
  ******************************************************************************
  */ 
  
#include "bsp_debug_usart.h"

UART_HandleTypeDef UartHandle;
extern uint8_t ucTemp;  
/**
 * @brief  DEBUG_USART GPIO 配置,工作模式配置。115200 8-N-1
 * @param  无
 * @retval 无
 */  
void DEBUG_USART_Config(void)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	RCC_PeriphCLKInitTypeDef RCC_PeriphClkInit;
        
	DEBUG_USART_RX_GPIO_CLK_ENABLE();
	DEBUG_USART_TX_GPIO_CLK_ENABLE();
    
	/* 配置串口1时钟源*/
	RCC_PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
	RCC_PeriphClkInit.Usart16ClockSelection = RCC_USART16CLKSOURCE_D2PCLK2;
	HAL_RCCEx_PeriphCLKConfig(&RCC_PeriphClkInit);
	/* 使能串口1时钟 */
	DEBUG_USART_CLK_ENABLE();

	/* 配置Tx引脚为复用功能  */
	GPIO_InitStruct.Pin = DEBUG_USART_TX_PIN;
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
	GPIO_InitStruct.Pull = GPIO_PULLUP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
	GPIO_InitStruct.Alternate = DEBUG_USART_TX_AF;
	HAL_GPIO_Init(DEBUG_USART_TX_GPIO_PORT, &GPIO_InitStruct);
    
	/* 配置Rx引脚为复用功能 */
	GPIO_InitStruct.Pin = DEBUG_USART_RX_PIN;
	GPIO_InitStruct.Alternate = DEBUG_USART_RX_AF;
	HAL_GPIO_Init(DEBUG_USART_RX_GPIO_PORT, &GPIO_InitStruct); 
    
	/* 配置串DEBUG_USART 模式 */
	UartHandle.Instance = DEBUG_USART;
	UartHandle.Init.BaudRate = DEBUG_USART_BAUDRATE;
	UartHandle.Init.WordLength = UART_WORDLENGTH_8B;
	UartHandle.Init.StopBits = UART_STOPBITS_1;
	UartHandle.Init.Parity = UART_PARITY_NONE;
	UartHandle.Init.Mode = UART_MODE_TX_RX;
	UartHandle.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;
	UartHandle.Init.OneBitSampling = UART_ONEBIT_SAMPLING_DISABLED;
	UartHandle.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
	HAL_UART_Init(&UartHandle);

	/*串口1中断初始化 */
	HAL_NVIC_SetPriority(DEBUG_USART_IRQ, 0, 0);
	HAL_NVIC_EnableIRQ(DEBUG_USART_IRQ);
	/*配置串口接收中断 */
	//__HAL_UART_ENABLE_IT(&UartHandle,UART_IT_RXNE);  
}


/*****************  发送字符串 **********************/
void Usart_SendString(const char *str)
{
	unsigned int k = 0;
	do 
	{
		HAL_UART_Transmit(&UartHandle, (uint8_t *)( str + k ), 1, 1000);
		k++;
	} while (*( str + k ) != '\0');
  
}



void DEBUG_USART_IRQHandler(void)
{
	if (__HAL_UART_GET_IT(&UartHandle, UART_IT_RXNE) != RESET)
	{		
		//Rxflag=1;		
		//HAL_UART_Receive(&UartHandle, (uint8_t *)&ucTemp, 1, 1000);        
	}
    
	HAL_UART_IRQHandler(&UartHandle);	  
}







