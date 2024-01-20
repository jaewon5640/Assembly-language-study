%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov ax,100
    mov bx,150
    mov cx,200
    
    cmp ax,bx
    jge L_greater_A
    mov [max],bx
    jmp L_cmp_max_cx
L_greater_A:
    mov [max],ax
L_cmp_max_cx:
    cmp cx,[max]
    jge L_greater_cx
    jmp L_end
L_greater_cx:
    mov [max],cx
L_end:
    PRINT_DEC 2,max         
    NEWLINE
    
    xor rax,rax
    ret
section .bss
    max resw 1    