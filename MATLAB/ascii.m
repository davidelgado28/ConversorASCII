function conversor_ascii()
    numero = input('Digite um numero (0-127): ');

    if numero < 0 || numero > 127
        disp('Valor invalido! Use 0 a 127.');
    else
        fprintf('ASCII: %c\n', char(numero));
    end
end
