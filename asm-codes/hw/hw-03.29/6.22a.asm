INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096
 n = 6
.DATA
 NonSym DB 'Non Symmetrical', 0
 Sym DB 'Symmetrical', 0
 x DD n DUP (?)
.CODE
start:
    mov ecx, n
    xor eax, eax
inp:inint x[4 * eax]
    inc eax
    loop inp
    
    mov ecx, n
    dec ecx
    xor eax, eax
chk:mov edx, ecx
    sub edx, eax
    cmp edx, 1
    jl  sym
    mov ebx, x[4 * eax]
    cmp ebx, x[4 * ecx]
    jne nonsym
    inc eax
    loop chk
    jmp sym
nonsym: outstr offset NonSym
        jmp fin
sym: outstr offset Sym
fin: exit    
 
END start