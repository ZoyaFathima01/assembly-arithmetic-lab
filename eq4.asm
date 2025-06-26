section .data
    var1    dd  8
    var2    dd  7
    result  dd  0

section .text
    global _start

_start:
    mov     eax, [var1]
    imul    eax, eax, 2
    mov     ebx, [var2]
    sub     ebx, 3
    cdq
    idiv    ebx
    mov     [result], eax

    mov     eax, 1
    xor     ebx, ebx
    int     0x80
