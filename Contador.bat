@echo off

chcp 1252

title Contador

color 1A

cls

set /p ini=Digite um n�mero pra iniciar a contagem: 

set /p fin=Digite um n�mero pra finalizar a contagem: 

set /p pas=Digite um n�mero pra definir o passo: 

cls

echo -----

for /l %%i in (%ini%,%pas%,%fin%) do (
echo %%i
)

echo -----

echo.

pause