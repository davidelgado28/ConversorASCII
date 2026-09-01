fun numeroParaASCII(numero: Int): String {
    if (numero < 0 || numero > 127) return "Valor invalido!"
    return numero.toChar().toString()
}

fun main() {
    print("Digite um numero (0-127): ")
    val numero = readLine()?.toIntOrNull() ?: -1
    println("ASCII: ${numeroParaASCII(numero)}")
}
