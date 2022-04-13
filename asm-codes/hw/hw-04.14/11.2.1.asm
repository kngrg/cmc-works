INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096
.DATA

.CODE
PrLD PROC
    push ebp
    mov ebp, esp
    xor edx, edx
    div ebx
    outu edx
    pop ebp
    ret
PrLD ENDP
start:
    push eax
    push ebx
    inint eax
    inint ebx
    call PrLD
    pop ebx
    pop eax
    exit
END start
