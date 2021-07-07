; DEV: CLOVIS WANDERLEY BERTHOLINI SOBRINHO
; APP: hello  (prints hello world on screen)
; DATE: July, 6 of 2021.

global _start

section .data
message: db "hello, world!", 10

section .text
_start:
    mov rax, 1 ; The number of systems calls must be included in rax.
    mov rdi, 1 ; Argument #1 in rdi: where write?
    mov rsi, message ; Argument #2 in rsi: where the string begins.
    mov rdx, 14 ; Argument #3 in rdx: how many bytes must be write.
    syscall ; This instruction does the system call.
