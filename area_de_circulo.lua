local sair = ""
local med = ""

while sair == "nao" or sair == "n" do
    print("calculadora de area de circulo")
    print("digite o raio do circulo")
    local raio = tonumber(io.read())
    print("agora digite a unidade de medida abreviada")
    local unimed = string.lower(io.read())
    local raiocal = raio * raio
    local ac = 3.1415 * raiocal
    if unimed == "mm" then
        med = "mm²"
    elseif unimed == "cm" then
        med = "cm²"
    elseif unimed == "dm" then
        med = "dm²"
    elseif unimed == "m" then
        med = "m²"
    elseif unimed == "dam" then
        med = "dam²"
    elseif unimed == "hm" then
        med = "hm²"
    elseif unimed == "km" then
        med = "km²"
    else
        print("nao entendi pode repetir?")
    end
    print("area do circulo e "..ac..med)
    print("deseja sair s/n")
    local sairp = string.lower(io.read())
    sair = sairp
end
