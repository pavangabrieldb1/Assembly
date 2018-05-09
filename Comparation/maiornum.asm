section .data
;db - define byte - 1 byte 
;dw - define word - 2 bytes 
;;dd - define double word - 4 bytes
;dq define quad word - 8 bytes 
;dt - define ten word - 10 bytes

    x dd 50 
    y dd 20 
    msg1 db "X maior que Y", 0xa
    len1 equ $ - msg1
    msg2 db "Y maior que X", 0xa
    len2 equ $ - msg2

section .text
    global _start 
    _start:
            mov eax, DWORD [x]
            mov edx, DWORD [y]
            cmp eax, edx ; comparação
            jge maior
            mov edx, len2
            mov ecx, msg2
            jmp final 

    maior:
            mov edx, len1
            mov ecx, msg1

    final:
            mov ebx, 1
            mov eax, 4
            int 0x80
            mov eax, 1
            int 0x80
            