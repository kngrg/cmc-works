INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA
c DD ?
a DW ?
b DW ?
.CODE
start:    
    xor eax, eax
    add ax, a
    shl eax, 4
    xor ebx, ebx
    movzx ebx, b
    add eax, ebx
    mov c, eax
    outu eax    
    

END start