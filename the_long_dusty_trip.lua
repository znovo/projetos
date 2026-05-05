local apont = 0
local pont = 0
print("Digite 'iniciar' para começar ou 'shop' para abrir a loja")
local menui = io.read():lower()

if menui == "iniciar" or menui == "i" then
    local fome, sede, gasolina, km = 100, 100, 100, 0
    local inventario = {}
    local mantimentos = {"água", "gasolina", "pão","caixa de ferramentas"}
    local hp_carro = 100
    print("Digite qualquer coisa para entrar no carro")
    local entrar = io.read()

    while gasolina > 0 or sede > 0 or fome > 0 or hp_carro > 0 do
        print("FOME = "..fome)
        print("SEDE = "..sede)
        print("GASOLINA = "..gasolina)
        print("VIDA DO CARRO = "..hp_carro)
        print("VOCÊ TEM "..#inventario.." ITENS NO SEU INVENTÁRIO")

        if #inventario > 0 then
            print("Deseja usar os itens do seu inventario?")
            print("o seu inventario tem esses itens: "..inventario)
            local un = io.read():lower()
            if un == "s" or un == "sim" then
                print("Você usou os itens do seu inventario")
                for _, item in ipairs(inventario) do
                    if item == "pao" then
                        print("Você comeu o pao e sentiu sua fome aumentar!")
                        fome = fome + 10
                    elseif item == "água" then
                        print("Você bebeu agua e sentiu sua sede aumentar!")
                        sede = sede + 10
                    elseif item == "gasolina" then
                        print("Você abasteceu o carro com gasolina!")
                        gasolina = gasolina + 10
                    elseif item == "caixa de ferramentas" then
                        if hp_carro <= 99 then
                            print("voce usou a caixa de ferramentas e reparou seu veiculo")
                            local limite = hp_carro < 100
                            novo_hp = hp_carro + 30
                            if limite then
                                hp_carro = math.min(novo_hp, limite_maximo)
                            end
                            hp_carro = hp_carro + 30
                            print("vida atual do carro "..hp_carro)
                        end
                    end
                end
            end
        end
            local evento = math.random (-2,2)
            if evento == 2 then
                print("voce achou bandidos, vai tentar reagir? (s/n)")
                local reagir = io.read()
                string.lower(reagir)
                if reagir == "s" or reagir == "sim" then
                    local rea = math.random(-5,3)
                    if rea <= 0 then
                        print("sua tentativa de reacao NAO deu certo e voce perdeu")
                        fome = fome - 100
                    elseif rea > 0 then
                        print("sua tentativa de reacao foi um SUCESSO e voce escapou deles")
                        local dano_carro = math.random(-20,20)
                        if dano_carro >= 1 then
                            hp_carro = hp_carro - dano_carro
                            print ("o seu carro nao saiu ileso do assalto")
                            print("a vida atual do seu carro esta em "..hp_carro)
                            print("para repara-lo basta usar a caixa de ferramenta")
                        end
                    end
                elseif reagir == "n" or reagir == "nao" then
                    local max_itens_ladrao = math.random(1,5)
                end
            elseif evento == 1 then
                local dano_carro_1 = math.random(10,65)
                hp_carro = hp_carro - dano_carro_1
                print("voce encontrou um tornado no caminho e danificou seu carro")
                print("a vida atual do seu carro esta em "..hp_carro)
                print("para repara-lo basta usar a caixa de ferramenta")
            end

        
        
            
            km, sede, fome, gasolina = km + 1, sede - 1, fome - 1, gasolina - 1
            local estr = math.random(-3,2)
            
            if estr > 0 then
                print("Você achou uma estrutura")
                print("Deseja entrar nela? (sim ou não)")
                local est1 = io.read()
                local est = string.lower (est1)
                if est == "sim" or est == "s" then
                    
                    local quant = math.random(0,3)

                    if #mantimentos > 1 then
                        print("o seu inventario tem esses itens:")
                        print(mantimentos)
                        print("voce achou essa quantidade de cada item "..quant)
                    elseif #mantimentos <= 0 then
                        print("voce achou nada")
                    end
                    
                    while quant > 0 do
                        local item = mantimentos[math.random(#mantimentos)]
                        print(item)

                        quant = quant - 1

                                            print("Deseja guardar esses mantimentos ou usá-los? (guardar ou usar)")
                    local gc = io.read():lower()
                    
                    if gc == "guardar" or gc == "g" then
                        print("Você guardou o(s) item(ns)")
                        for _, item in ipairs(mantimentos) do
                            inventario[#inventario + 1] = item
                        end
                    elseif gc == "usar" or gc == "u" then
                        print("Você usou os seus itens")
                    end
                    

                        if item == "pão" then
                            print("Você comeu o pão e sentiu sua fome aumentar!")
                            fome = fome + 10
                        elseif item == "água" then
                            print("Você bebeu água e sentiu sua sede aumentar!")
                            sede = sede + 10
                        elseif item == "gasolina" then
                            print("Você abasteceu o carro com gasolina!")
                            gasolina = gasolina + 10
                        elseif item == "caixa de ferramentas" then
                            if hp_carro <= 99 then
                                print("voce usou a caixa de ferramentas e reparou seu veiculo")
                                hp_carro = hp_carro + 30
                                print("vida atual do carro "..hp_carro)
                            end
                        end
                    end
                    

                    print("Você saiu da estrutura e continuou a dirigir")
                end
            end
    end

    print("Parece que você perdeu")
    pont = km * 0.5
    print("Sua pontuação foi "..pont)
    if pont > apont then
        print("Parabéns, você bateu seu recorde")
    end
end


