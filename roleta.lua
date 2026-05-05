::inicio::
local ale = math.random(1,5)
print("escolha um numero de 1 a 5")
local num = tonumber(io.read())
local tipo = type(num)
if ale == num then
    print("voce escolheu o numero errado")
    os.remove("roleta.lua")

elseif ale ~= num and ale > 0 and ale > 5 and tipo ~= "boolean" and tipo ~= "string" then
    print("parabens voce escolheu o numero certo")
    goto inicio

else
    print("por favor escolha um numero de 1 a 5")
    goto inicio
end
