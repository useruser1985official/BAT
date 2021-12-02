@echo off

chcp 1252

title Operações Aritméticas

color 1B

cls

set /p num1=Digite o primeiro número: 

set /p num2=Digite o segundo número: 

cls

set /a soma=num1 + num2

set /a subs=num1 - num2

set /a mult=num1 * num2

set /a divi=num1 / num2

set /a rest=num1 %% num2

echo A soma entre %num1% e %num2% é igual à %soma%.

echo A subtração entre %num1% e %num2% é igual à %subs%.

echo A multiplicação entre %num1% e %num2% é igual à %mult%.

echo A divisão entre %num1% e %num2% é igual à %divi% com resto de %rest%.

echo.

pause