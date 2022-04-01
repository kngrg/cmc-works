INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA
x DD ?
y DD 0
.CODE
start:
    inint x
    mov eax, x	
    add eax, 52
    shr eax, 4
    add y, eax
    mov eax, x
    shl eax, 5
    add y, eax
    outu y
END start