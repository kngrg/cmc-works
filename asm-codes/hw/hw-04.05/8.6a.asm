INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

n = 3
.DATA
x DQ n DUP (-3, -2, 2)
k DB 1
.CODE
start:	
   ; mov ecx, n
   ; xor eax, eax
;inArr:
   ; inint x[8 * eax]
   ; inint x[8 * eax - 4]
   ; inc eax
   ; loop inArr
   ; УСЛОВИЕ ГОВНА ВВОД НЕ РАБОТАЕТ
 
    mov ebx, 80000000h
    mov ecx, n   
 fr:
    and ebx, dword ptr x[8 * ecx - 4]
    loop fr
    
    test ebx, ebx
    jz negN
    jmp fin    
negN:
    mov k, 0
    
fin:
    add k, '0'
    outchar k  

END start