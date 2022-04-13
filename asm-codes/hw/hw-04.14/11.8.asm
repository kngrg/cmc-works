INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

n = 6
m = 5

.DATA
Msg db 'Proc',0
k db 5
x db 100 dup (?)
.CODE
setabs PROC
    push ebp
    mov ebp, esp
    push eax
    push esi
    push ebx
    push ecx
    push edx
    push edi

    mov esi, [ebp + 8]; x
    mov edi, m
    mov ecx, [ebp + 12]; k
    xor eax, eax
    xor edx, edx
    xor ebx, ebx

    mov dl, byte ptr [esi][edi]; x[m]
    cmp byte ptr [esi][eax], dl; x[0] v x[m]
    jl negx0

    mov bl, byte ptr [esi][edi]; cl = x[m]
    cmp bl, 0; x[m] v 0
    jl negr
    jmp finc
negr:
    neg bl
finc:
    jmp finP
negx0:

     mov bl, byte ptr [esi][eax]
     cmp bl, 0; x[m] v 0
     jl negr1
     jmp finc1
 negr1:
     neg bl
 finc1:
     jmp finP

finP:
    mov eax, [ebp + 12]
    mov byte ptr [eax], bl
    pop edi
    pop edx
    pop ecx
    pop ebx
    pop esi
    pop eax
    pop ebp
    ret 8
setabs ENDP
start:
    mov ecx, n
    xor eax, eax
inp:
    inint x[eax]
    inc eax
    loop inp

    push offset k
    push offset x
    call setabs

    movzx ebx, k
    outi ebx
    newline
    exit
END start
