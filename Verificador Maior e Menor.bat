@echo off

chcp 1252

title Verificador Maior e Menor

color 1A

cls

set /p num1=Digite o primeiro n�mero: 

set /p num2=Digite o segundo n�mero: 

echo.

if %num1% gtr %num2% (
echo O n�mero %num1% � maior que o %num2%.
) else if %num1% lss %num2% (
echo O n�mero %num1% � menor que o %num2%.
) else (
echo Os n�meros %num1% e %num2% s�o iguais.
)

echo.

pause