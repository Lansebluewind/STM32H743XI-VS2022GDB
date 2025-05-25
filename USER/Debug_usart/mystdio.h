#pragma once

#include "bsp_debug_usart.h"
#include <stdarg.h> // for va_list, va_start, va_end
#include <stdio.h>  // for vsnprintf
void myprintf(const char* fmt, ...);

int myscanf(const char* fmt, ...);