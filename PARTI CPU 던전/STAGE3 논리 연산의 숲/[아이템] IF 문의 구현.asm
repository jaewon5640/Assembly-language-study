%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov ax,20
    mov bx,20
    
    cmp ax,bx
    je L_equal
    mov cx,0
    jmp L_equal_end
L_equal:
    mov cx,100
L_equal_end:
    PRINT_DEC 2,cx
    NEWLINE
    
    xor rax,rax
    ret    