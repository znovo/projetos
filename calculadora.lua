print("calculadora")
::i::
print("digite o primeiro numero")
local num1 = io.read()
print("digite qual operaçao voce vai usar")
local op1 = io.read()
local op = string.lower(op1)
print("digite o segundo numero")
local num2 = io.read()
if op == "+" then
    print("a soma do numero e ".. num1 + num2)
elseif op == "-" then
    print("a subtraçao dos numeros e ".. num1 - num1)
elseif op == "." or op == "x" or op == "*" then
    print("a multilicacao dos numeros e "..num1 * num2)
elseif op == "/" or op == "÷" then
    print("a divisao dos numeros e "..num1 / num2)
end