; 1. 입력한 숫자의 제곱근을 구한다(소수 부분을 제외한 자연수 부분만)
; 2. 제곱근 숫자까지 
%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    PRINT_STRING msg_input
    GET_DEC 2,number
    NEWLINE
    mov eax,1
    mov ebx,1
L1:
    mov eax,ebx
    mul eax
    cmp eax,[number]
    je L3
    jg L2
    inc ebx
    jmp L1
L2:
    dec ebx
L3:
    mov [sqrt],ebx
    
    mov eax,[number]
    mov edx,eax
    shr edx,16
    and eax,0x0000ffff    

L_is_prame_main:
    mov eax,ebx
    mul eax
    cmp eax,[number]
L_is_prame_1:
    mov eax,ebx
    mul eax
    cmp eax,[number]
    je L3
    jg L2
    inc ebx
    jmp L_is_prame_1
L_is_prame_2:
L_sqrl:                        
    xor rax,rax
    ret
section .data
    msg_input db '# input number:',0x00
    
section .bss
    current resw 1
    number resw 1
    total resw 1
    sqrt resw 1