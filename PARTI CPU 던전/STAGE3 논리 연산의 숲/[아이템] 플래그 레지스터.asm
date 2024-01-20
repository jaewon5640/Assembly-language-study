%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov ax,0x1234
    mov ax,0x0000
    PRINT_HEX 2,ax
    NEWLINE
    
    add ax,0x1234
    mov ax,0x1234
    test ax,0x0000
    PRINT_HEX 2,ax
    NEWLINE
        
    xor rax,rax
    ret