section .data
    var1 dd 8
    var2 dd 7
    two  dd 2
    three dd 3

section .bss
    result resd 1

section .text
    global _start

_start:
    mov eax, [var1]
    imul eax, [two]       ; eax = var1 * 2
    mov ebx, [var2]
    sub ebx, [three]      ; ebx = var2 - 3
    cdq                   ; sign extend eax into edx:eax
    idiv ebx              ; eax = eax / ebx
    mov [result], eax

    ; exit
    mov eax, 1
    int 0x80
