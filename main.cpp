#include <stm32h7xx_hal.h>
#include <stm32_hal_legacy.h>
#include <sstream>
#include <vector>
#include <string>
#ifdef __cplusplus
extern "C"
{
#endif	
#include "stm32h7xx.h"
#include "bsp_debug_usart.h"
#include "bsp_SysTick.h"
#include "SystemClock_config.h"
#include "mystdio.h"
#ifdef __cplusplus
}
#endif
//避免出现swprintf未定义的编译错误
__attribute__(( weak )) int swprintf(wchar_t *s, size_t n, const wchar_t *fmt, ...)
{
	return -1; // 简单实现
}
using namespace std;

int main(void)
{  
	SystemClock_Config(); //系统时钟初始化成480MHz
	SysTick_Init(); //滴答定时器
	DEBUG_USART_Config(); //串口初始化	
	myprintf("hello world!\n");
	vector<pair<int, int>> data;
	for (int i = 40; i > 0; i--)
		data.push_back(pair<int, int>( i, i*i ));
	for (auto i : data)
		myprintf("(i=%d,i*i=%d) ", i.first, i.second);
	string str = "\n123 456\n";
	stringstream str_cin(str);
	int a, b;
	str_cin >> a;
	str_cin >> b;
	myprintf("a=%d,b=%d\n", a, b);
	while (1) ;
}



