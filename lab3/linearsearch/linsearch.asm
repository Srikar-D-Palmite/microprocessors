global linsearch
section .text
asearch:
    mov rax, $0;
	cmp rsi, 0; rdi, rsi, rdx
	je finish ;	go to finish if compare(rsi, 0) says they're equal
loopArray:
    cmp rdx, [rdi];
    je finish;
	add rdi, 8; i++
    inc rax; i++
	dec rsi; decrement counter
	cmp rsi, 0;
	jne loopArray;
notFound:
    mov rax, $-1;
finish:
	ret 
