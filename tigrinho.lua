
local saldo = 0 -- saldo do jogador

::iniciot::
print("voce deseja ver o saldo da sua conta sim ou nao") -- pergunta se o jogador quer ver  saldo
local versaldo1 = io.read()
local versaldo = string.lower(versaldo1) -- transforma a resposta do usuario em minuscula

if versaldo == "sim" or versaldo == "s" then -- verifica se a resposta do usuario e sim
    print("esse e seu saldo "..saldo)
else
    print("ok voce nao deseja ver o saldo") -- caso o jogador na deseje ver o saldo
end


print("deseja depositar? sim ou nao") -- pergunta se o jogador quer depositar algum valor
local sn1 = io.read()
local sn = string.lower(sn1)

if sn == "sim" or sn == "s" then -- verifica se a resposta foi sim
    print("digite o valor que deseja adicionar na sua conta") -- pergunta o valor que vai ser adicionado a conta
    local num = tonumber(io.read())

    saldo = saldo + num -- adiciona o valor na conta
    print("foi adicionado "..num.." na sua conta")
    goto fimv

elseif sn == "n" or sn == "nao" then
    print("ok voce cancelou o deposito") -- caso o jogador cancele o deposito
else
    print("parece que voce digitou alguma coisa errada")
    goto iniciot
end

print("digite quanto voce deseja apostar") -- pergunta ao jogador quanto ele deseja apostar
local aporte = tonumber(io.read())

if saldo < aporte then -- verifica se o valor e menor que o saldo caso seja ele cancela o aporte
    print("voce nao tem saldo suficiente")
    goto iniciot -- volta  codigo para a table inicio
end

if aporte < 1 then -- verifica se o aporte e menor que 1
    print("digite um numero valido")
    goto iniciot -- volta  codigo para a table inicio
end

local numsor = math.random(-20,10) -- sorteia um numero de 20 negativo a 10 positivo

local mul = numsor * aporte -- multiplica o aporte com o numero aleatorio

print("o seu aporte foi multiplicado em "..mul)
saldo = saldo + mul

::fimt::

print("deseja continuar jogando sim ou nao") -- pergunta ao jogador se ele deseja continuar jogando
local joga1 = io.read()
local joga = string.lower(joga1) -- transforma a resposta em minuscula

if joga == "sim" or joga == "s" then -- verifica se a resposta foi sim
    goto inicioh

elseif joga == "n" or joga == "nao" then -- verifica se a resposta foi nao
    print("parece que voce cansou de jogar tigrinho")

else -- caso o jogador tenha escrito aalguma coisa errada
    print("parece que voce escreveu alguma coisa errada")
    goto fimt
end