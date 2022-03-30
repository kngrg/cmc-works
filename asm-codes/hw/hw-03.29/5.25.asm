INCLUDE settings.inc
INCLUDE io2021.inc

.STACK 4096

.DATA
N DD ?
NonPrime DB 'N is not prime', 0
Prime DB 'N is prime', 0
.CODE
start:	
 inint eax ; scanf(n)
 mov esi, eax
 xor ecx, ecx; ecx = 0
 xor edx, edx; edx = 0
 mov ebx, 2; ebx = 2
 div ebx;  edx:eax / ebx 
 mov ecx, eax ; ecx = n / 2
 f:cmp ebx, ecx ; for (i = 2; i <  n / 2; i++) {i <=> ebx n/2 <=> ecx}
 jg prime
 mov eax, esi; eax = n
 xor edx, edx
 div ebx; n % i
 test edx, edx; if (n % i == 0)
 je non_prime
 inc ebx 
 jmp f
 non_prime: OUTSTR offset NonPrime
            jmp fin
 prime: outstr offset Prime
 fin:  EXIT
END start