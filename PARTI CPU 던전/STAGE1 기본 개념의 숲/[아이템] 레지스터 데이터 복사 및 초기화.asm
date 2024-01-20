%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    mov eax,0x1234  ; A레지스터 32bit 크기에 0x1234값을 저장
    mov ax,0x1234   ; A레지스터 16bit 크기에 0x1234값을 저장
    mov ax,bx       ; bx값을 ax 로 복사
    mov ax,ebx      ; [에러발생] ebx(32bit) 값을 ax(16bit)에 복사 (데이터손실로 허용하지 않음)
    
    xor rax,rax
    ret