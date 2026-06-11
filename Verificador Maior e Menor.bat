@echo off

chcp 1252

title Verificador Maior e Menor

color 1A

cls

set /p num1=Digite o primeiro número: 

set /p num2=Digite o segundo número: 

echo.

if %num1% gtr %num2% (
echo O número %num1% é maior que o %num2%.
) else if %num1% lss %num2% (
echo O número %num1% é menor que o %num2%.
) else (
echo Os números %num1% e %num2% são iguais.
)

echo.

pause