;Hi this is my first asm project
;This is a asm project to say hello
;COPYRIGHTED BY ROCKY
global _start

section .say:

_start:
    mov eax, 0x4
    mov ebx, 1
    mov ecx, text_msg
    mov edx, text_len
    int 0x80

    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data:
    text_msg: db "This is my asm projet to say hi to you and my mission immpossible got sucess",0xA
    text_len: equ $-text_msg  