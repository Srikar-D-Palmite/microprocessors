# include <stdio.h>
# include <inttypes.h>

int64_t seriesSum(int64_t, int64_t);

int main(void)
{
    int64_t n = 2, x = 5;
    printf("sum of the progression = %ld\n", seriesSum(x, n));
    return 0;
}