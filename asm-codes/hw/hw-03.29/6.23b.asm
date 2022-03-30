INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096
 n = 8
.DATA
 x DD n DUP (?)
.CODE
start:	
    mov ecx, n
    xor eax, eax
inp:inint x[4 * eax]
    inc eax
    loop inp
    
    mov ecx, n
    sub ecx, 2
  f:mov ebx, x[4 * ecx]- 4
    XCHG ebx, x[4 * ecx] + 4
    mov x[4 * ecx] - 4, ebx
    loop f
    
    mov ecx, n
    xor eax, eax
    prt: outu x[4 * eax]
    newline
    inc eax
    loop prt
    
    exit
END start