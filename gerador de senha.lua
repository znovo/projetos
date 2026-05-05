
local contador = 0

print("Digite o tamanho da senha:")
local tam = tonumber(io.read())
local senha = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}

for i = 0, 9 do
    table.insert(senha, tostring(i))
end

while contador < tam do
    local aleatorio = math.random(#senha)
    contador = contador + 1
    io.write(senha[aleatorio])
end
