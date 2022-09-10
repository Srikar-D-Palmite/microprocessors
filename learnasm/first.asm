global first
section .text
first:
    mov rax, 8; program to add two numbers. If you want to take arguments, they are stored in rdi, rsi.
    mov rbx, 4; array for input is rsi. Array for output is rdi
    add rax, rbx;
    ret; nasm first.asm -f elf64
