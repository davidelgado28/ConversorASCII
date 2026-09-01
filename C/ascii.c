#include <stdio.h>

int main() {
    int numero;

    printf("Digite um numero (0-127): ");
    scanf("%d", &numero);

    if (numero < 0 || numero > 127) {
        printf("Valor invalido! Use 0 a 127.\n");
        return 1;
    }

    printf("ASCII: %c\n", (char)numero);
    return 0;
}
