import java.util.Scanner;

public class ConversorASCII {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Digite um numero (0-127): ");
        int numero = scanner.nextInt();

        if (numero < 0 || numero > 127) {
            System.out.println("Valor invalido! Use 0 a 127.");
        } else {
            System.out.println("ASCII: " + (char) numero);
        }
        scanner.close();
    }
}
