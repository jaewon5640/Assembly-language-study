%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    PRINT_STRING msg1
    GET_DEC 1,a
    PRINT_STRING msg1    
    GET_DEC 1,b
    
    ; 더하기
    mov al,[a]
    add al,[b]
    mov [c],al
    
    ; 빼기
    mov al,[a]
    sub al,[b]
    mov [d],al
    
    ; 곱하기
    mov ax,0
    mov al,[a]
    mov bl,[b]
    mul bx
    mov [e],ax
    
    ; 나누기
    mov ax,0
    mov al,[a]
    mov bl,[b]
    div bl
    mov [f],al
    mov [g],ah
    
    PRINT_STRING msg2
    PRINT_DEC 1,c
    NEWLINE
    PRINT_STRING msg3    
    PRINT_DEC 1,d
    NEWLINE
    PRINT_STRING msg4    
    PRINT_DEC 1,e
    NEWLINE
    PRINT_STRING msg5    
    PRINT_DEC 1,f
    NEWLINE
    PRINT_STRING msg6    
    PRINT_DEC 1,g
    NEWLINE           

    xor rax,rax
    ret
section .data
    msg1 db 'input data:',0x00
    msg2 db '+:',0x00
    msg3 db '-:',0x00
    msg4 db '*:',0x00
    msg5 db '/(q):',0x00
    msg6 db '/(r):',0x00    
section .bss
    a resb 1
    b resb 1
    c resb 1
    d resb 1
    e resw 1
    f resb 1
    g resb 1