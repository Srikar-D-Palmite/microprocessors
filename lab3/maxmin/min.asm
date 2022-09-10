global minel
section .text
minel: 
	xor rax,rax; Initialize rax to zero
	cmp rsi, 0; 
	je finish ;	go to finish if compare(rsi, 0) says they're equal
next:
    cmp rax, [rdi];
    jg reassign
	add rdi, 8; i++
	dec rsi;	decrement counter
	cmp rsi, 0;
	jne next;
	jmp finish;
reassign:
    mov rax, [rdi]
    jmp next
finish:
	ret 
