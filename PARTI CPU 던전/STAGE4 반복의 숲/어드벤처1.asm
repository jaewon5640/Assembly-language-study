%include "io64.inc"

section .text
global CMAIN
CMAIN:
    GET_DEC 2,[number]
    mov ecx,0

L1:        
    mov eax,0
    mov ax,[number]
    mov bl,2
    div bl
    mov [number],word 0
    mov [number],al
    mov [binary_array+ecx],ah
    inc ecx
    cmp al,0
    jz L2
    jmp L1
L2:
    PRINT_DEC 1,binary_array+ecx-1
    dec ecx
    cmp ecx,0
    jnz L2
        
    xor rax,rax
    ret

section .data
    msg_input db '# input number:',0x00
    
section .bss
    number resw 1
    binary_array resb 256       