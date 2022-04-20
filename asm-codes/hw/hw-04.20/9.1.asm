a)
    type R1 = 1
    type R2 = 4
b)
    width R1 = 3
    width A = 1
    width B = 2
    mask R1 = 00000111
    mask A = 00000100
    mask B = 00000011
    A = 2
    B = 0
c)
    R2 M N L
    width R2 = 27
    width M = 5
    width N = 10
    width L = 12
    mask R2 = 7FF.FFFFh ;0000 0111 FFFF
    mask M = 7C0.0000h  ;0000 0111 1100
    mask N = 3F F000h; 0000 0000 0011 1111 1111 0000 0000 0000
    mask = 0FFFh; 0000 0000 0000 0000 0000 1111 1111 1111
    M = 22
    N = 12
    L = 0
