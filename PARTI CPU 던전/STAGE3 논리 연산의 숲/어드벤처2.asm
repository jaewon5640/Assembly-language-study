%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov ebx,0
    mov bx,ax
    
    PRINT_HEX 4,ax
    NEWLINE
    PRINT_HEX 4,ebx
    NEWLINE