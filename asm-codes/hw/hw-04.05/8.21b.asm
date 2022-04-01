INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096


.DATA
x DD ?
y DD 0
new_x EQ <mov eax, x>
sum EQ <add y, eax>
.CODE
start:
    inint x
    new_x 
    and eax, 7
    sum
    new_x
    and eax, 15
    sum
    new_x
    and eax, 31
    sum
    outu y
END start