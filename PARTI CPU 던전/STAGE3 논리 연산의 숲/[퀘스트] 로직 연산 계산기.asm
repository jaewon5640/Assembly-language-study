%include "io64.inc"

section .text
global CMAIN
CMAIN:
    PRINT_STRING msg_input
    GET_DEC 2,a
    NEWLINE
    PRINT_STRING msg_input
    GET_DEC 2,b
    NEWLINE
    PRINT_STRING msg_input
    GET_DEC 2,c
    NEWLINE
    
    mov ax,[a]
    mov bx,[b]
    cmp ax,bx           ; a,b compare
    
    jge L_max_a         ; compare a,b and setting max value
    mov ax,[b]
    jmp L_store_max_value_1
L_max_a:
    mov ax,[a]
L_store_max_value_1:
    mov [max],ax
    
    jle L_min_a         ; compare a,b and setting min value
    mov ax,[b]
    jmp L_store_min_value_1
L_min_a:
    mov ax,[a]
L_store_min_value_1:
    mov [min],ax

    mov ax,[max]
    mov bx,[c]
    cmp ax,bx           ; compare max,c and setting max value
    
    jge L_max_max
    mov ax,[c]
    mov [max],ax                                            
L_max_max:    
    mov ax,[min]
    mov bx,[c]
    cmp ax,bx           ; compare min,c and setting min value
    
    jle L_min_min
    mov ax,[c]
    mov [min],ax
L_min_min:
    mov ax,[min]        ; max * min
    mov bx,[max]
    mul bx    
    shl edx,16
    and eax,0x0000ffff
    or eax,edx
    
    mov [total],eax     ; mov total
    
    PRINT_STRING msg_max
    PRINT_DEC 2,max
    NEWLINE
    
    PRINT_STRING msg_min
    PRINT_DEC 2,min
    NEWLINE    
    
    PRINT_STRING msg_total
    PRINT_DEC 4,total
    NEWLINE
        
    xor rax,rax
    ret
section .data
    msg_input db 'input : ',0x00
    msg_max db 'max : ',0x00
    msg_min db 'min : ',0x00
    msg_total db 'total : ',0x00
        
section .bss
    a resw 1
    b resw 1
    c resw 1
    max resw 1
    min resw 1
    total resd 1