%include "io64.inc"

section .text
global CMAIN
CMAIN:
    PRINT_STRING 'input : '
    GET_DEC 1,bl
    PRINT_STRING 'input : '    
    GET_DEC 1,cl
    
    ;더하기
    mov al,bl
    add al,cl
    PRINT_STRING '+ : '
    PRINT_DEC 1,al
    NEWLINE
        
    ;빼기
    mov al,bl
    sub al,cl
    PRINT_STRING '- : '
    PRINT_DEC 1,al    
    NEWLINE
    
    ;곱하기
    mov ax,0
    mov al,bl
    mul cx
    PRINT_STRING '* : '
    PRINT_DEC 2,ax
    NEWLINE
    
    ;나누기
    mov ax,0
    mov al,bl
    div cl
    mov dl,ah
    PRINT_STRING '/(q) : '
    PRINT_DEC 1,al
    NEWLINE
    PRINT_STRING '/(r) : '
    PRINT_DEC 1,bl
    
    xor rax,rax
    ret
    
    
