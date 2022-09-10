global median
section .text
median:
    mov rax, $-1; rax has median?
    cmp rsi, 0;
    je finish;
    mov rax, rsi;
    mov rdx, 0;
    mov rbx, 2;
    idiv rbx; absolute division // of size of array to get mid, stored in rax
    mov rbx, 1;
    and rbx, rax; 
    cmp rbx, 0; implies array length is even
    je even;
odd:
    mov rcx, 8;
    imul rcx; rax will be the amount of bytes at which index points to middle of array
    add rdi, rax; rdi now points to middle of array
    mov rax, [rdi]
    jmp finish
even:
    mov rcx, 8;
    imul rcx; rax will be the amount of bytes at which index points to middle of array-1
    add rdi, rax;
    mov rax, [rdi];
    add rax, [rdi+8]; arr[mid]+array[mid+1]
    mov rbx, 2;
    idiv rbx; (arr[mid]+array[mid+1])/2
finish:
    ret
