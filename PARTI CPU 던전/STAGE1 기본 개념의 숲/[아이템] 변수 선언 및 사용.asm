%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    xor rax, rax
    ret

section .bss    ; 초기화되지 않은 변수선언
    a resb 1    ; 1byte 크기 a 변수 1개 선언
    b resw 2    ; 2byte 크기 b 변수 2개 선언
    c resd 1    ; 4byte 크기 c 변수 1개 선언
    d resq 3    ; 8byte 크기 d 변수 3개 선언

section .data   ; 초기화된 변수선언
    e db 0x12   ; 1byte e 변수 선언 및 0x33으로 초기화
    f dw 0x1234 ; 2byte f 변수 선언 및 0x1234으로 초기화
    g dd 0x12345678 ; 4byte g변수 선언 및 0x12345678으로 초기화
    h dq 0x1234567890123456 ; 8byte h변수 선언 및 0x1234567890123456으로 초기화