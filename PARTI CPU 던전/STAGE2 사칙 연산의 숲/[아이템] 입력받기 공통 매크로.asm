%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    GET_DEC 1,al    ; 1byte input
    GET_DEC 2,a     ; 2byte input
    
    PRINT_DEC 1,al
    NEWLINE 
    PRINT_DEC 2,a
    
    xor rax,rax
    ret
section .bss
    a resb 1