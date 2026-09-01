function numero_para_ascii(numero::Int)
    numero < 0 || numero > 127 && return "Valor invalido!"
    return string(Char(numero))
end

println("Digite um numero (0-127): ")
numero = parse(Int, readline())
println("ASCII: ", numero_para_ascii(numero))
