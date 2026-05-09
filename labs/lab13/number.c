#include <stdio.h>
#include <stdlib.h>

int main() {
    int x;

    printf("Enter number: ");
    scanf("%d", &x);

    if (x > 0)
        exit(1);
    else if (x < 0)
        exit(2);
    else
        exit(0);
}
