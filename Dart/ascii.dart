import 'dart:io';

String numeroParaASCII(int numero) {
  if (numero < 0 || numero > 127) return 'Valor invalido!';
  return String.fromCharCode(numero);
}

void main() {
  stdout.write('Digite um numero (0-127): ');
  int numero = int.parse(stdin.readLineSync()!);
  print('ASCII: ${numeroParaASCII(numero)}');
}
