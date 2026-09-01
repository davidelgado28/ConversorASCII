numero_para_ascii <- function(numero) {
  if (numero < 0 || numero > 127) return("Valor invalido!")
  rawToChar(as.raw(numero))
}

numero <- as.integer(readline("Digite um numero (0-127): "))
cat("ASCII:", numero_para_ascii(numero), "\n")
