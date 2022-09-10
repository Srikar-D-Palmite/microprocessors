global maxel
section .text
maxel:
	mov rax, [rdi]; Initialize max as a[0]
	cmp rsi, 0; 
	je finish ;	go to finish if compare(rsi, 0) says they're equal
next:
    cmp rax, [rdi];
    jl reassign
	add rdi, 8; i++
	dec rsi; decrement counter
	cmp rsi, 0;
	jne next;
	jmp finish;
reassign:
    mov rax, [rdi]; update max value
    jmp next; go back to loop
finish:
	ret 
