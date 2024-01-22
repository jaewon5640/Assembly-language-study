; 임의의 숫자를 입력받아(2byte 크기) 1에서부터 그 숫자까지 3의 배수만 선택하여 모두 배열에 저장하고 그 개수와 값을 각각 출력하라.
; 저장된 모든 수의 합을 구하여 출력하라.
%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ; input max number
    PRINT_STRING msg_input
    GET_DEC 2,data_max
    NEWLINE
    
    ; check 3's multiple
    mov [data_size],word 0
    mov edx,1 ; index: edx 1 ~ 100
L1: ; AX/8bit = AH(나머지)    
    mov bl,3
    mov ax,dx
    div bl
    cmp ah,0
    jnz L_next
    mov eax,0
    mov ax,[data_size]
    mov [data+eax*2],dx
    inc eax
    mov [data_size],ax
L_next:    
    inc edx
    cmp dx,[data_max]
    jle L1
    
    ; print number
    PRINT_STRING msg_count
    PRINT_DEC 2,[data_size]
    NEWLINE
    mov eax,0
L_print:
    PRINT_DEC 2,[data + eax*2]
    NEWLINE
    inc eax
    
    cmp ax,word [data_size]
    jl L_print
    
    ;get total
    mov word[total],0
    mov ecx,0
    mov cx,[data_size]
    mov eax,0
    mov ebx,0
L_total:
    add ebx,[data + eax*2]
    inc eax
    loop L_total
    mov [total],ebx
    
    PRINT_STRING msg_total
    PRINT_DEC 2,total
    NEWLINE
        
    xor rax,rax
    ret

section .data
    msg_input db '# input max number:',0x00
    msg_count db '# number count:',0x00
    msg_total db 'total:',0x00

section .bss
    data_max resw 1
    data_size resw 1
    data resw 100
    total resw 1   

              