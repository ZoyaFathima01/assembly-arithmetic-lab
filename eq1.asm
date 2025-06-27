section .data
    var1 dd 5       ; example value
    ten  dd 10

section .bss
    result resd 1

section .text
    global _start

_start:
    mov eax, [var1]     ; eax = var1
    imul eax, [ten]     ; eax = var1 * 10
    neg eax             ; eax = -eax
    mov [result], eax   ; store result

    ; exit
    mov eax, 1
    int 0x80
