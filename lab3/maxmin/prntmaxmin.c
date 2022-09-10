# include <stdio.h>
# include <inttypes.h>

// int maxMin(int64_t [], int64_t [], int64_t size);
int64_t maxel(int64_t [], uint64_t size);
int64_t minel(int64_t [], uint64_t size);

int main(void)
{
    int64_t n = 8;
    long int in[] = {8, 1, 2, 4, 5, 9, 2, -1}; // fix
    long int max_el = maxel(in, n);
    long int min_el = minel(in, n);
    printf("max = %ld, min = %ld\n", max_el, min_el);
    // printf("%d", maxMin(in, out, n));
    return 0;
}