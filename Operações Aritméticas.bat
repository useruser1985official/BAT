@echo off

chcp 1252

title Opera��es Aritm�ticas

color 1B

cls

set /p num1=Digite o primeiro n�mero: 

set /p num2=Digite o segundo n�mero: 

cls

set /a soma=num1 + num2

set /a subs=num1 - num2

set /a mult=num1 * num2

set /a divi=num1 / num2

set /a rest=num1 %% num2

echo A soma entre %num1% e %num2% � igual � %soma%.

echo A subtra��o entre %num1% e %num2% � igual � %subs%.

echo A multiplica��o entre %num1% e %num2% � igual � %mult%.

echo A divis�o entre %num1% e %num2% � igual � %divi% com resto de %rest%.

echo.

pause