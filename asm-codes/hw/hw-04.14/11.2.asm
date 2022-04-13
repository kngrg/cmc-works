INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096
.DATA

.CODE
PrLD PROC
    push ebp
    mov ebp, esp
    push ebx
    push eax
    push edx
    xor edx, edx
    mov ebx, [ebp + 8]; p
    mov eax, [ebp + 12]; n
    div ebx
    outu edx
    pop edx
    pop eax
    pop ebx
    pop ebp
    ret 8
PrLD ENDP
start:
    inint eax
    inint ebx
    push eax; n
    push ebx; p
    call PrLD
END start
