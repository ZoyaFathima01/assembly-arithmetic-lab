section .data
    var1 dd 2
    var2 dd 3
    var3 dd 4

section .bss
    result resd 1

section .text
    global _start

_start:
    mov eax, [var1]
    neg eax             ; -var1
    imul eax, [var2]    ; -var1 * var2
    add eax, [var3]     ; + var3
    mov [result], eax

    ; exit
    mov eax, 1
    int 0x80
