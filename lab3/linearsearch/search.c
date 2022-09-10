# include <stdio.h>
# include <inttypes.h>

int64_t linsearch(int64_t [], uint64_t size, int64_t key);

int main(void)
{
    int64_t n = 8;
    long int in[] = {8, 1, 2, 4, 5, 9, 2, -1};
    printf("index = %ld\n", linsearch(in, n, 5));
    return 0;
}