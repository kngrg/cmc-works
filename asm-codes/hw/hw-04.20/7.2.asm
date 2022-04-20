a)
    mov T1.H, 17
    mov T1.M, 25
    mov T1.S, 0
b)
    mov T2.H, T1.H
    mov T2.M, T1.M
    mov T2.S, T1.S
c)
    cmp t2.s, 59
    jne addingS
    mov t2.s, 0
    cmp t2.m, 59
    jne addingM
    mov t2.m, 0
    cmp t2.h, 23
    jne addingH
    mov t2.h, 0
    jmp fin
addingS:
    inc t2.s
    jmp fin
addingM:
    inc t2.m
    jmp fin
addingH:
    inc t2.h
    jmp fin
fin:
    exit