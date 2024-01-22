%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov eax,0
    mov ecx,5
L1:
    PRINT_DEC 1,my+eax
    NEWLINE
    inc eax
    loop L1

    mov eax,0
L2:
    PRINT_DEC 1,my+eax
    NEWLINE
    inc eax
    cmp eax,5
    jl L2
    
    xor rax,rax
    ret
        
section .data
    my db 1,2,3,4,5      