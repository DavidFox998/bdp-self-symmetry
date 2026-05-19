#include <stdio.h>

typedef struct {
    long p;
    int q;
    int m;
    int k;
    double eps;
} BDPRow;

static const BDPRow table[] = {
    {599, 3, 41, -82, 0.000},
    {733, 19, 8, -43, -0.283},
    {1013, 3, 70, 24, -0.358},
    {2593, 191, 3, 57, -0.058},
    {18899, 191, 20, -125, 1.436},
    {37273, 191, 40, -82, 0.000},
    // p_11 through p_14: paste your remaining rows here
};

int main() {
    for(int i=0; i<10; i++) {
        printf("%ld & %d & %d & %d & %.3f \\\\\n",
            table[i].p, table[i].q, table[i].m, table[i].k, table[i].eps);
    }
    return 0;
}
