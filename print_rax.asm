; DEV: CLOVIS WANDERLEY BERTHOLINI SOBRINHO
; APP: print_rax (shows the value on register rax)
; DATE: July, 6 of 2021.
section .data                                                           
codes:                              
    db      '0123456789ABCDEF'      

section .text                       
global _start                       
_start:                         
    ; number 1122... in hexadecimal format
    ;mov rax, 0x1122334455667788    
    
    mov rdi, 1                  
    mov rdx, 1                  
    mov rcx, 64   
	; Each 4 bits should be output as one hexadecimal digit
	; Use shift and bitwise AND to isolate them
	; the result is the offset in 'codes' array
_start.loop:        
    mov rax, 0x1122334455667788                    
    push rax                    
    sub rcx, 4
	; cl is a register, smallest part of rcx
	; rax -- eax -- ax -- ah + al
	; rcx -- ecx -- cx -- ch + cl
    sar rax, cl                 
    and rax, 0xf                
    
    lea rsi, [codes + rax]
    mov rax, 1                  
    ;syscall
    ; syscall leaves rcx and r11 changed
    push rcx                              
    syscall                     
    pop rcx                     

    ;mov rax, 1

    pop rax
	; test can be used for the fastest 'is it a zero?' check
	; see docs for 'test' command
    test rcx, rcx
    jnz _start.loop   
    
    mov     rax, 60            ; invoke 'exit' system call
    xor     rdi, rdi
    syscall
