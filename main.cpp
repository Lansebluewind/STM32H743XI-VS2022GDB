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

//使用myprintf输出一个用*打印的房子
void printHouse(int width, int height);
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
	printHouse(10, 6);
	while (1) ;
}

//使用myprintf输出一个用*打印的房子,要有三角形的房顶，
//房子身体为正方形。无论房子多大，房顶的高度都是房子身体高度的一半。房子的宽度和高度都是偶数。
void printHouse(int width, int height)
{
	if (width % 2 != 0 || height % 2 != 0)
	{
		myprintf("width and height must be even numbers.\n");
		return;
	}
	int roofHeight = height / 2;
	int bodyHeight = height - roofHeight;
	// 打印房顶
	for (int i = 0; i < roofHeight; i++)
	{
		for (int j = 0; j < width; j++)
		{
			if (j >= width / 2 - i && j <= width / 2 + i)
				myprintf("*");
			else
				myprintf(" ");
		}
		myprintf("\n");
	}
	// 打印房子身体
	for (int i = 0; i < bodyHeight; i++)
	{
		for (int j = 0; j < width; j++)
		{
			if (j == 0 || j == width - 1)
				myprintf("*");
			else
				myprintf(" ");
		}
		myprintf("\n");
	}
}


