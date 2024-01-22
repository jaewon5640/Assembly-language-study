%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov ax,0
    mov cx,10
L1:
    add ax,cx
    loop L1
    
    PRINT_DEC 2,ax
    NEWLINE
        
    xor rax,rax
    ret