#include <stdio.h>
#include <stdlib.h>

int biggest(int, int, int);
int factorial(int);

int main(int argc, char *argv[]) {
    if (argc < 5) {
        printf("Usage: %s num1 num2 num3 factnum\n", argv[0]);
        return 1;
    }

    int a = atoi(argv[1]);
    int b = atoi(argv[2]);
    int c = atoi(argv[3]);
    int n = atoi(argv[4]);

    printf("Biggest of %d, %d, %d is: %d\n", a, b, c, biggest(a, b, c));
    printf("Factorial of %d is: %d\n", n, factorial(n));

    return 0;
}

