numero = int(input("Digite um numero (0-127): "))

if 0 <= numero <= 127:
    print(f"ASCII: {chr(numero)}")
else:
    print("Valor invalido! Use 0 a 127.")
