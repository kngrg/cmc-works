INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA
N DD ?
.CODE
start:
    xor edx, edx
    xor ecx, ecx
    xor ebx, ebx
    inint eax
    mov ebx, 10
  w:test eax, eax
    JE fin
    div ebx
    test edx, edx
    JE count
    cmp edx, 5
    JE count
    JMP step
count: inc cl
step: xor edx, edx
      JMP w
fin:OUTU ecx
    
END start