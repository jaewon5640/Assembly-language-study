%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov ax,0xff12
    mov bx,0xff23
    
    mul bx
    shl edx,16
    and eax,0x0000ffff
    or eax,edx
    
    mov [ok],eax
    PRINT_HEX 4,ok
    NEWLINE
    
    xor rax,rax
    ret
section .bss
    ok resd 1