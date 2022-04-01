INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA

.CODE
start:	
   inint eax
   mov ecx, 8
cyc:   
   mov ebx, 0F0000000h
   and ebx, eax; ebx = eax mod 16
   shl eax, 4
   shr ebx, 28
   outu ebx
   
   loop cyc

END start