1) P(5,y)

   a) push eax
      push ebx
      mov eax, 5
      lea ebx, y
      call P
      pop ebx
      pop eax

   б) push 5
      push offset y
      call P

2) P(x,y)
    a) push eax
       push ebx
       mov eax, x
       lea ebx, y
       call P
       pop ebx
       pop eax

    b) push x
       push offset y
       call P

3) P(x + 2, y)
    a) -||-
       push eax
       push ebx
       mov eax, x
       add eax, 2
       lea ebx, y
       call P
       -||-

    b) mov eax, x
       add eax, 2
       push eax
       push offset y
       call P

4) P(x,x)
    a) push eax
       push ebx
       mov eax, x
       lea ebx, x
       call P
       pop ebx
       pop eax

    b) push x
       push offset x
       call P