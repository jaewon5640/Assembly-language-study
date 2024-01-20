%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    PRINT_STRING msg_input  ; input data
    GET_DEC 2,eax
    NEWLINE
    
    mov bx,3
    mov edx,eax
    shr edx,16
    and eax,0x0000ffff    
    div bx
    
    cmp dx,0
    je L_three_multi
    PRINT_STRING msg_no
    jmp L_end
L_three_multi:
    PRINT_STRING msg_yes
L_end:
    xor rax,rax
    ret   
    
section .data
    msg_input db 'input : ',0x00
    msg_yes db 'yes',0x00
    msg_no db 'no',0x00    