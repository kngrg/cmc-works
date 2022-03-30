INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096
 n = 10
.DATA
 x DB n DUP (?)
 y DW n DUP (?)
 z DD n DUP (?)
.CODE
start:	
    xor eax, eax
    xor esi, esi
    mov ecx, n
  f:
     mov x[eax], al
     mov y[2 * eax], ax
     mov z[4 * eax], eax
     inc eax
     loop f
     exit
        
END start