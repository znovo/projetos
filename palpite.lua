---@diagnostic disable: undefined-global
local ale = math.random(1,1000)
local pontuacao = 0

print("deseja ver a pontuaçao digite sim para confirmar")

local res = io.read()

if res == "sim" then
    print("sua pontuaçao e: "..pontuacao)
end

print ("tente acertar o numero")

::inicio::

print("digite seu palpite")

local palpite = tonumber(io.read())

local tipo = type(palpite)

if tipo == "number" then

 if palpite == ale then
   print ("parabens voce acertou")
   print("sua pontuacao subiu para "..pontuacao + 1)

 elseif palpite > ale then
    print("muito alto")
    goto inicio

 elseif palpite < ale then
    print("muito baixo")
    goto inicio
 end
else
    print("digite um numero valido")
    goto inicio
end