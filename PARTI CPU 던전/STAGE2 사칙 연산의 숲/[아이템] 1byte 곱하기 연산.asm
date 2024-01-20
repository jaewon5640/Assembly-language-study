%include "io64.inc"

section .text
global CMAIN
CMAIN:
    PRINT_DEC 2,ax
    NEWLINE
    
    mov ax,0
    mov al,2
    mov bl,3
    mul bx
    
    PRINT_DEC 1,ax
    NEWLINE
    
    xor rax,rax
    ret