// gcc -E asx.c
// gives expanded file
// > asx.i
// moves it into a .i file
// gcc -S asx.i
// assembly code


	// movl	%eax, -12(%rbp)
	// movl	-12(%rbp), %eax

# include <stdio.h>
# include <stdlib.h>

int main(void)
{
    int a = 5, b = 10;
    int c = a+b;
    // printf("Hello world");
    return c;
}