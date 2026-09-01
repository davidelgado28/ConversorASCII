using System;

class ConversorASCII {
    static void Main() {
        Console.Write("Digite um numero (0-127): ");
        int numero = int.Parse(Console.ReadLine());

        if (numero < 0 || numero > 127) {
            Console.WriteLine("Valor invalido! Use 0 a 127.");
        } else {
            Console.WriteLine("ASCII: " + (char)numero);
        }
    }
}
