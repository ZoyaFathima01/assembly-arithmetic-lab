section .data
    var1 dd 3
    var2 dd 4
    var3 dd 5
    var4 dd 2

section .bss
    result resd 1

section .text
    global _start

_start:
    mov eax, [var1]
    add eax, [var2]
    add eax, [var3]
    add eax, [var4]
    mov [result], eax

    ; exit
    mov eax, 1
    int 0x80
