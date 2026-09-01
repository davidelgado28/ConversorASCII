programa {
    funcao inicio() {
        inteiro numero
        caracter letra

        escreva("Digite um numero (0-127): ")
        leia(numero)

        se (numero >= 0 e numero <= 127) {
            letra = 'A' + numero - 65  
            escreva("ASCII: ", numero, " -> caracter codigo ", numero, "\n")
        } senao {
            escreva("Valor invalido! Use 0 a 127.\n")
        }
    }
}
