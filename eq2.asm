section .data
    var1    dd  2
    var2    dd  3
    var3    dd  4
    var4    dd  5
    result  dd  0

section .text
    global _start

_start:
    mov     eax, [var1]
    add     eax, [var2]
    add     eax, [var3]
    add     eax, [var4]
    mov     [result], eax

    ; exit
    mov     eax, 1
    xor     ebx, ebx
    int     0x80
