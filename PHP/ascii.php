<?php
$numero = (int) readline("Digite um numero (0-127): ");

if (numero >= 0 &&numero <= 127) {
    echo "ASCII: " . chr($numero) . "\n";
} else {
    echo "Valor invalido! Use 0 a 127.\n";
}
