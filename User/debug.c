#include "stdio.h"

#pragma import(__use_no_semihosting_swi) //ȡ��semihostģʽ
#pragma import(__use_no_semihosting) //ȡ��semihostģʽ

//�ú������Է�ֹ��_sys_exit is referenced����
void _sys_exit(int x) { 
    x = x; 
} 

struct __FILE  { 
    int handle; 
}; 

FILE __stdout;
FILE __stdin;

//fputc,fgetc,ferror��Ϊ�˷�ֹ��sys_open is referenced����
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
//Ϊ�˷�ֹ��_ttywrch is referenced����
void _ttywrch(int ch)
{
;
}
