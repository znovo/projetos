local saldo = 0
local nome = ""
local idade = 0
local senha = ""
local email = ""

print ("deseja se cadastrar ou fazer login")
local login_cadastrar_1 = io.read()
local login_cadastrar = string.lower(login_cadastrar_1)
if login_cadastrar == "c" or login_cadastrar == "cadastrar" then
    print("digite seu nome de usuario")
    nome = io.read()
    print("digite seu email")
    local email_2 = io.read()
    local email_1 = string.lower(email_2)
    print("digite sua idade")
    local idade_2 = io.read()
    local idade_1 = tonumber(idade_2)
    idade = idade_1 + idade
    if idade < 18 then
        print("voce nao tem idade suficiente para participar do jogo")
        os.exit(0)
    elseif idade >= 18 then
        print("voce tem idade suficiente para participar do jogo")
    end

    print("digite sua senha")
    senha = io.read()
    print("confirme sua senha")
    local confirma_senha = io.read()

    while senha ~= confirma_senha do
        print("parece que sua senha esta diferente da outra")
        print("tente novamente")
        print("digite sua senha")
        senha = io.read()
        print("confirme sua senha")
        confirma_senha = io.read()
    end
    print("voce cadastrou-se com sucesso")
elseif login_cadastrar == "login" or login_cadastrar == "login" then
    print("digite seu email ou nome de usuario")
    local login_email = ""
        while login_email ~= email or login_email ~= nome do
            print("nao encontramos esse nome de usuario")
            print("tente novamente")
            print("digite seu email ou nome de usuario")
            local login_email = ""
        end
    print("digite sua senha")
    local senha_1 = io.read()
    while senha_1 ~= senha do
        print("senha incorreta")
        print("tente novamente")
        print("digite sua senha")
        local senha_1 = io.read()
    end
    print("login feito com sucesso")

else
    print("parece que ouve um erro")
end

print("voce tem "..saldo.." de saldo ")
print("deseja depositar (s/n)")
local depositar_1 = io.read()
local depositar = string.lower(depositar_1)
if depositar == "s" or depositar == "sim" then
    print("digite valor que deseja depositar")
    local valor_deposito = tonumber(io.read())
    saldo = saldo + valor_deposito    
end
local jogos = [[
tigrinho
sorteio
dado
]]
print("escolha um jogo que deseja jogar")
print("lista de jogos: "..jogos)
local escolha_jogos = string.lower(io.read())
if escolha_jogos == "tigrinho" or escolha_jogos == "t" then
    print("voce escolheu tigrinho")
    print("digite quanto voce deseja apostar")
    local apostar_tigrinho = tonumber(io.read())
    while apostar_tigrinho <= 0 do
        print("digite um numero valido")
        apostar_tigrinho = io.read()
    end
    local num_sorteado_tigrinho = math.random(-30,10)
    num_sorteado_tigrinho = apostar_tigrinho * num_sorteado_tigrinho
    print("o numero sorteado foi "..num_sorteado_tigrinho)
    print("voce ganhou "..num_sorteado_tigrinho)
    print("deseja jogar denovo? (s/n)")
    local jogar_novamente_tigrinho = string.lower(io.read())
    while jogar_novamente_tigrinho == "s" or "sim" do
        print("digite quanto voce deseja apostar")
        local apostar_tigrinho = tonumber(io.read())
        while apostar_tigrinho <= 0 do
            print("digite um numero valido")
            apostar_tigrinho = io.read()
        end
        local numero_sorteado_tigrinho = math.random(-30,10)
        numero_sorteado_tigrinho = apostar_tigrinho * numero_sorteado_tigrinho
        print("o numero sorteado foi "..numero_sorteado_tigrinho)
        print("voce ganhou "..numero_sorteado_tigrinho)
        print("deseja jogar denovo? (s/n)")
        jogar_novamente_tigrinho = string.lower(io.read())
    end
elseif escolha_jogos == "dado" or "d" then
    print("digite um numero de 1 a 6")
    local dado_num = io.read()
    local num_sorteado_dado = math.random(1,6)
    print("o numero sorteado foi "..num_sorteado_dado)
end