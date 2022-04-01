INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA

.CODE
start:	
    inint eax
    mov ecx, 32
    
    xor ebx, ebx
cyc:
    shr eax, 1
    rcl ebx, 1
    loop cyc 
    
    outu ebx 

END start