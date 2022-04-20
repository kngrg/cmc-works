INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA
d DB ?
.CODE
NextDig PROC
    push ebp
    mov ebp, esp
    push eax
    push ebx
    mov eax, [ebp + 8]
    mov ebx, [eax]
    cmp ebx, '9'
    jne adding
    mov ebx, '0'
    jmp fin
adding:
    inc ebx
fin:
    mov [eax], ebx
    pop ebx
    pop eax
    pop ebp
    ret 4
NextDig ENDP
start:
    inchar d
    push offset d
    call NextDig
    outchar d
    exit
END start


