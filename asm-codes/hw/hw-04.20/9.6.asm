INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA
DATE RECORD Y:7, M:4, D:5
D1 DATE <12,4,6>
D2 DATE <01,9,11>
.CODE
start:
    xor eax, eax
    xor ebx, ebx
    mov ebx, d1
    cmp ebx, d2; d1 v d2
    jg zero
    or al, 0FFh
zero:
    outu eax
END start


