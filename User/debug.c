#include "stdio.h"

#pragma import(__use_no_semihosting_swi) //取消semihost模式
#pragma import(__use_no_semihosting) //取消semihost模式

//该函数可以防止报_sys_exit is referenced错误
void _sys_exit(int x) { 
    x = x; 
} 

struct __FILE  { 
    int handle; 
}; 

FILE __stdout;
FILE __stdin;

//fputc,fgetc,ferror是为了防止报sys_open is referenced错误
int fputc(int ch, FILE *f) {
  return 0;
}

int fgetc(FILE *f) {
  return 0;
}


int ferror(FILE *f) {
  /* Your implementation of ferror */
  return EOF;
}
//为了防止报_ttywrch is referenced错误
void _ttywrch(int ch)
{
;
}
