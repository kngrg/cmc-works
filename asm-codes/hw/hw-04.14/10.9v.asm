INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

n = 5

.DATA

.CODE

start:
    xor eax, eax

    mov ecx, n
inSt:
    inint eax
    push eax
    loop inSt

    xor ebp, ebp
    mov ebp, esp
    xor eax, eax
    xor ebx, ebx
    mov ebx, 2

    mov ecx, n
count:
    xor eax, eax
    mov eax, [ebp]
    and eax, 1
    test eax, eax
    jz next
    xchg [ebp], eax
next:
    add ebp, 4
    loop count

    mov ecx, n
    mov ebp, esp
outSt:
    xor eax, eax
    mov eax, [ebp]
    outu eax
    newline
    add ebp, 4
    loop outSt
END start
