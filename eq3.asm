section .data
    var1    dd  2
    var2    dd  5
    var3    dd  4
    result  dd  0

section .text
    global _start

_start:
    mov     eax, [var1]
    neg     eax
    imul    eax, [var2]
    add     eax, [var3]
    mov     [result], eax

    mov     eax, 1
    xor     ebx, ebx
    int     0x80
