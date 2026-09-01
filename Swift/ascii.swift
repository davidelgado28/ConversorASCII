func numeroParaASCII(_ numero: Int) -> String {
    if numero < 0 || numero > 127 { return "Valor invalido!" }
    return String(UnicodeScalar(numero)!)
}
print("Digite um numero (0-127): ", terminator: "")
if let linha = readLine(), let numero = Int(linha) {
    print("ASCII: \(numeroParaASCII(numero))")
}
