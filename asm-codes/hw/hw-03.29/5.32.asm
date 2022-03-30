INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA

.CODE
start:
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx
    inint eax
    mov ebx, 5

    test eax, eax
    je count
    
    w:cmp eax, 0
    je fin
    xor edx,edx
    div ebx
    test edx, edx
    je count
    cmp edx, 2
    je count
    jmp step
    count: inc ecx
    step: jmp w
    fin: outu ecx

END start