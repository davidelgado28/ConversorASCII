$numero = [int] (Read-Host "Digite um numero (0-127)")

if(numero−lt0−ornumero -lt 0 -ornumero−lt0−ornumero -gt 127){
    Write-Host "Valor invalido! Use 0 a 127."
}else{
    Write-Host "ASCII: ([char]([char]([char]numero)"
}
