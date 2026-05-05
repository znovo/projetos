local nome = "" -- armazena o nome de usuario
local senha = "" -- armazena a senha
local idade = tonumber("") -- armazena a idade


::iniciol::


print("deseja se cadastra ou fazer login") -- pergunta se quer fazer login ou se cadastrar
local res1 = io.read()
local res = string.lower(res1) -- transforma a resposta em miuscula

if res == "c" or res == "cadastrar" then -- verifica se a pessoa quer cadastrar
    print("digite sua nome: ") -- pergunta o nome de usuario
    local nome1 = io.read()
    nome = nome + nome1

    print("digite sua idade") -- pede para a pessoa digitar a idade 
    local idadec = tonumber(io.read())

    if idade < 18 then -- verifica se a pessoa e menor de idade
        print("voce e menor de idade nao pode participar")
        goto fiml
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
        senha = senha + senhac
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
end


::fiml::
