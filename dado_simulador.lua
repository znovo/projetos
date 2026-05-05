
-- Escreva um programa que simule o lançamento de dados. Os usuários podem especificar o número de dados e o programa retornará os resultados dos lançamentos.
::ini::
print("simulador de dados")
print("digite o numero que o dado vai terminar")
local faces = tonumber (io.read())
print("digite o numero onde ele vai começar")
local faces1 = tonumber (io.read())
if faces < faces1 then
    print("erro por favor tene novamente")
    goto ini
end
local aleatorio = math.random(faces, faces1)

print("o numero do dado:  "..aleatorio)