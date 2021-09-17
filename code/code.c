#include <stdio.h>
#include <stdlib.h>
#include "unicorn.h"

// Program start
int main(int argc, char const *argv[]) {
    long special = 0xDEADBEEF;

    node *theme = malloc(sizeof(node));
    theme->value = "Unicorn";
    theme->next = NULL;

    printf("Hello, %s!\n", theme->value);
    printf("Special number: %lu\n", special);

    return 0;
}

