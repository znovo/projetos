-- Escreva um programa que verifica se uma palavra inserida pelo usuário é um palíndromo (uma palavra que é lida da mesma forma de trás para frente).

print("me fale uma palavra para verificar se e um palindro")
local pala = io.read()
local palr = string.reverse(pala)
if pala == palr then
    print("essa palavra palavra e um palindromo")
else
    print("essa palavra nao e um palindromo")
end
print ("deseja verificar denovo se ua palavra e um palindromo? s/n")
local denovo1 = io.read()
local denovo = string.lower(denovo1)
while denovo == "s" or denovo == "sim" do
    print("me fale uma palavra para verificar se e um palindro")
    local pala = io.read()
    local palr = string.reverse(pala)
    if pala == palr then
       print("essa palavra palavra e um palindromo")
    else
      print("essa palavra nao e um palindromo")
    end
    print ("deseja verificar denovo se ua palavra e um palindromo? s/n")
    local denovo1 = io.read()
    local denovo = string.lower(denovo1)
end