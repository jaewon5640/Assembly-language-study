%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov al,[a]
    mov [e],al
    
    mov ax,[b]
    mov [f],ax
    
    mov eax,[c]
    mov [g],eax
    
    mov rax,[d]
    mov [h],rax
    
    PRINT_HEX 1,a
    NEWLINE
    
    PRINT_HEX 2,b
    NEWLINE
    
    PRINT_HEX 4,c
    NEWLINE
    
    PRINT_HEX 8,d
    NEWLINE
    
    PRINT_HEX 1,e
    NEWLINE
    
    PRINT_HEX 2,f
    NEWLINE
    
    PRINT_HEX 4,g
    NEWLINE
    
    PRINT_HEX 8,h
    NEWLINE
    
    xor rax,rax
    ret
section .data
    a db 0x12
    b dw 0x1234
    c dd 0x12345678
    d dq 0x1234567890123456
section .bss
    e resb 1
    f resw 1
    g resd 1
    h resq 1