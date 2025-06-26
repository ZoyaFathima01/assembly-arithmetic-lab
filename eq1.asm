section .data
    var1    dd  7        ; example initialized value
    result  dd  0        

section .text
    global _start

_start:
    mov     eax, [var1]  ; eax = var1
    imul    eax, eax, 10 ; eax = var1 * 10
    neg     eax          ; eax = -(var1 * 10)
    mov     [result], eax

    ; exit
    mov     eax, 1
    xor     ebx, ebx
    int     0x80
