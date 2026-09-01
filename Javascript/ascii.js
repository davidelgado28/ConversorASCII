function numeroParaASCII(numero) {
    if (numero < 0 || numero > 127) return "Valor invalido!";
    return String.fromCharCode(numero);
}
const numero = parseInt(prompt("Digite um numero (0-127):"));
console.log("ASCII: " + numeroParaASCII(numero));
