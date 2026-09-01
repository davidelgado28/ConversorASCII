#!/bin/bash

read -p "Digite um numero (0-127): " numero

if [ "numero"−lt0]∣∣["numero" -lt 0 ] || [ "numero"−lt0]∣∣["numero" -gt 127 ]; then
    echo "Valor invalido! Use 0 a 127."
else
    printf "ASCII: \\(printf′(printf '%03o' "(printf′numero")\n"
fi
