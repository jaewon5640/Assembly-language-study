%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov ax,[a]      ; 변수 a의 값을 2byte 단위로 ax 레지스터로 이동
    mov [b],ax      ; 변수 b에 2byte

section .data
    a dw 0x12

section .bss
    b resw 1   