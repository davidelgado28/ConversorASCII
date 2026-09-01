function numeroParaASCII(numero: number): string {
    if (numero < 0 || numero > 127) return "Valor invalido!";
    return String.fromCharCode(numero);
}

console.log("ASCII:", numeroParaASCII(65)); 
