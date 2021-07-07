; DEV: CLOVIS WANDERLEY BERTHOLINI SOBRINHO
; APP: hello_proper_exit (exits correctly from hello app)
; DATE: July, 6 of 2021

section .data
message: db "hello, world!", 10

section .text
global _start

_start:
    mov rax, 1	; Number of syscall write
    mov rdi, 1	; stdout descriptor
    mov rsi, message	; address of string
    mov rdx, 14	; Length of the string
    syscall

    mov rax, 60	; Number of syscall exit
    xor rdi, rdi
    syscall
