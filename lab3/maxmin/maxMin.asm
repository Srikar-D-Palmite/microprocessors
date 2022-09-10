global maxMin
section .text
maxMin:
    mov rax, [rdi]; rdi has input array. rsi will have output array. rdx has array size. have min in rax,
    mov rbx, [rdi]; max in rbx
    cmp rdx, 0;
    je finish; starting next, we have one for loop split into a bunch of sections because conditions in asm suck
maxMinLoop:
    cmp rax, [rdi]; check if current element is min
    jg less;
    jmp loop1;
loop1:
    cmp rbx, [rdi]; check if current element is max
    jl more;
    jmp loop2
loop2:
    add rdi, 8; update loop. i++
    dec rdx;
    cmp rdx, 0;
    jne maxMinLoop; go to beginning of loop
    jmp output
less:
    mov rax, [rdi]; update min variable
    jmp loop1;
more:
    mov rbx, [rdi]; update max variable
    jmp loop2;
output:
    mov [rsi], rax;
    mov [rsi+8], rbx;
    jmp finish
finish:
    ret;