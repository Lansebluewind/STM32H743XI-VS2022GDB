#include "mystdio.h"

void myprintf(const char* fmt, ...)
{
	char buf[128]; // 根据需要调整缓冲区大小
	va_list args;
	va_start(args, fmt);
	vsnprintf(buf, sizeof(buf), fmt, args);
	va_end(args);
	Usart_SendString(buf);
}


int myscanf(const char* fmt, ...)
{
	char buf[128] = { 0 };
	int idx = 0;
	char ch = 0;

	// 逐字节接收，直到遇到回车或缓冲区满
	while (idx < sizeof(buf) - 1)
	{
		HAL_UART_Receive(&UartHandle, ( uint8_t * )&ch, 1, 0xFFFF);
		if (ch == '\r' || ch == '\n')
		{
			break;
		}
		buf[idx++] = ch;
	}
	buf[idx] = '\0';

	va_list args;
	va_start(args, fmt);
	int ret = vsscanf(buf, fmt, args);
	va_end(args);
	return ret;
}







