
print("digite um numero")
local num = tonumber(io.read())
local pi = num%2
if pi == 0 then
    print("e par")
elseif pi == 1 then
    print("e impar")
end