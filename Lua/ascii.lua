function numeroParaASCII(numero)
    if numero < 0 or numero > 127 then
        return "Valor invalido!"
    end
    return string.char(numero)
end

io.write("Digite um numero (0-127): ")
local numero = tonumber(io.read())
print("ASCII: " .. numeroParaASCII(numero))
