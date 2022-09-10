# include <stdio.h>
# include <inttypes.h>

int64_t median(int64_t [], uint64_t);
int64_t mode(int64_t [], uint64_t);

int main(void)
{
    int64_t n = 8;
    long int in[] = {2, 4, 6 ,8, 10, 16, 32, 64};
    long int med = median(in, n);
    // long int mod = mode(in, n);
    printf("median = %ld, mode=\n", med);
    return 0;
}