global seriesSum
section .text
; t=1. calc t=t*x+1. repeat n times. Other way: (x^(n+1)-1)/(x-1)
seriesSum:
    mov rax, $1; t
    cmp rsi, 0;
    je finish;
multLoop:
    imul rdi; not sure how it works. rdi = x, so this is t*x
    inc rax; t++
    dec rsi;
    cmp rsi, 0;
	jne multLoop;
finish:
    ret