INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

 n = 6
.DATA
No DB 'No',0
Yes DB 'Yes',0
x DW n DUP (?)
.CODE
start:	
    xor ebx, ebx
    xor edi, edi

    mov ecx, n
    xor eax, eax
inp:inint x[2 * eax]
    inc eax
    loop inp
    
    mov ecx, n
    dec ecx
    xor eax, eax
    mov edx, 1
    mov esi, n
    dec esi
    
 f1: cmp eax, esi
     je outn
     mov bx, x[2 * eax]
     f2:
     mov di, x[2 * edx]       
     cmp ebx, edi; if (x[i] != x[j]) j++  
     je outy
     inc edx
     loop f2
     
     mov ecx, n
     dec ecx
     
     inc eax
     
     sub ecx, eax
     
     mov edx, eax
     inc edx
     
     jmp f1
     
 outn: outstr offset No
       jmp fin
 outy: outstr offset Yes
   fin:                     
     
 

END start