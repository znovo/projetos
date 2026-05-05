::inicios::
print("digite se quer comprar um bilhete sim ou nao") -- pergunta se deseja comprar bilhete
local ress1 = io.read()
local ress = string.lower(ress1) -- ransforma a resposta do usuario em miuscula

local sort = math.random(1,10000) -- sorteia um numero aleatorio de 1 a 10000

if ress == "s" or ress == "sim" then -- verifica se a resposta foi sim

  saldo = saldo - 5 -- diminui o saldo em 5

  print("digite um numero de 1 a 10000") -- pede para o jogador escolher um numero de 1 a 10000
  local palp = tonumber(io.read())

  if palp ~= sort then -- verifica se o jogador errou

    print("voce errou")

    print("o numero sorteado foi "..sort)


    ::meios::


    print("deseja continuar jogando sim ou nao ou trocar de jogo")

    print("para troca de jogo basta digitar trocar de jogo") -- pergunta se o jogador quer continuar jogando ou trocar de jogo
    local ress3 = io.read()
    local ress2 = string.lower(ress3)

    if ress2 == "s" or ress2 == "sim" then -- verifica se a resposta fo sim

      goto inicios

    elseif ress2 == "n" or ress2 == "nao" then -- verifica se a resposta foi nao

      print("ok, voce nao deseja mais jogar")

      goto fimv

    elseif ress2 == "trocar de jogo" then -- verifica se o jogador quer trocar de jogo 

      print ("escolha qual jogo quer jogar")

      goto fiml

    end

  elseif palp == sort then -- verifica se o jogador ganhou

    print("parabens voce ganhou ")

    saldo = saldo + 10000 -- adiciona dez mil no saldo do jogador

    goto meios

  end
end