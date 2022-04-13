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

    mov ecx, n
count:
    xor edx, edx
    mov edx, [ebp]
    test edx, edx
    jnz next
    inc al
next:
    add ebp, 4
    loop count

    outu eax
    newline
END start
