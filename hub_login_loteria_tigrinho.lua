local nome = "" -- armazena o nome de usuario
local senha = "" -- armazena a senha
local idade = 0 -- armazena a idade
local saldo = 0


::iniciol::


print("deseja se cadastra ou fazer login") -- pergunta se quer fazer login ou se cadastrar
local res1 = io.read()
local res = string.lower(res1) -- transforma a resposta em miuscula

if res == "c" or res == "cadastrar" then -- verifica se a pessoa quer cadastrar
    print("digite sua nome: ") -- pergunta o nome de usuario
    local nome1 = io.read()
    nome = nome1
    ::cadastro::
    print("digite sua idade") -- pede para a pessoa digitar a idade 
    local idadec = io.read()
    local tipo = type(idadec)
    if tipo == "number" and idadec >= 18 then
        
    end



    ::meiol::


    print("digite sua senha: ")  -- pede a senha
    local senhac = io.read()

    print("confirme sua senha: ") -- pede para confirmar a senha
    local senha2 = io.read()

    if senhac ~= senha2 then -- verifica se a senha sao iguais
        print("sua senha esta diferente")
        goto meiol

    else
        print("voce se cadastrou com sucesso")
        senha = senhac
        goto iniciol

    end

elseif res == "l" or res == "login" then -- verifica se o usuario quer fazer login
    print("digite seu nome de usuario") -- pede o nome de usuario
    local nomel = io.read()

    print("digite sua senha") -- pede a senha do usuario
    local senhal = io.read()

    if nomel == nome and senhal == senha then -- verifica se tudo esta certo
        print("voce se logou com sucesso")
        goto fiml

    else
        print("parece que a alguma coisa errada")
        goto iniciol
    end
else
    print("parece que voce escreveu alguma coisa errada")
    goto iniciol
end


::fiml::


print("deseja depositar? sim ou nao") -- pergunta se o jogador quer depositar algum valor
local sn1 = io.read()
local sn = string.lower(sn1)
    

if sn == "sim" or sn == "s" then -- verifica se a resposta foi sim
    print("digite o valor que deseja adicionar na sua conta") -- pergunta o valor que vai ser adicionado a conta
    local num = tonumber(io.read())
    
    saldo = saldo + num -- adiciona o valor na conta
    print("foi adicionado "..num.." na sua conta")
    goto fiml
    
elseif sn == "n" or sn == "nao" then
    print("ok voce cancelou o deposito") -- caso o jogador cancele o deposito
else
    print("parece que voce digitou alguma coisa errada")
    goto fiml
end

::escolhadj::

print("digite qual jogo quer jogar tigrinho ou loteria") -- pergunta qual jogo o jogador quer jogar
local resh1 = io.read()
local resh = string.lower(resh1) -- transforma a resposta do usuario em minuscula


if resh == "l" or resh == "loteria" then -- verifica se o jogador que jogar loteria
    
  ::inicios::
  print("digite se quer comprar um bilhete sim ou nao") -- pergunta se deseja comprar bilhete
  local ress1 = io.read()
  local ress = string.lower(ress1) -- ransforma a resposta do usuario em miuscula

 if ress == "s" or ress == "sim" then -- verifica se a resposta foi sim

   saldo = saldo - 5 -- diminui o saldo em 5

   print("digite um numero de 1 a 10000") -- pede para o jogador escolher um numero de 1 a 10000
   local palp = tonumber(io.read())
   local sort = math.random(1,10000) -- sorteia um numero aleatorio de 1 a 10000
   if palp ~= sort then
    
     print("Você errou.")
     print("O número sorteado foi " .. sort)
     goto inicios
    elseif palp == sort then 
     print("Parabéns, você ganhou!")
     saldo = saldo + 10000
     goto fimv
    
    end


    

elseif resh == "t" or resh == "tigrinho" then -- verifica se o jogador que jogar tigrinho


        ::iniciot::

        
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
            goto iniciot
        
        elseif joga == "n" or joga == "nao" then -- verifica se a resposta foi nao
            print("parece que voce cansou de jogar tigrinho")
        
        else -- caso o jogador tenha escrito aalguma coisa errada
            print("parece que voce escreveu alguma coisa errada")
            goto fimt
        end

    end
elseif resh ~= "t" or resh ~= "tigrinho" then
    print("parece que voce digitou alguma coisa errada")
    goto escolhadj
end
::fimv::