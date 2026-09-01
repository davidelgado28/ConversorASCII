def numero_para_ascii(numero)
  return "Valor invalido!" if numero < 0 || numero > 127
  numero.chr
end

print "Digite um numero (0-127): "
numero = gets.chomp.to_i
puts "ASCII: #{numero_para_ascii(numero)}"
