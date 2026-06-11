@echo off

chcp 1252

title Contador

color 1A

cls

set /p ini=Digite um número pra iniciar a contagem: 

set /p fin=Digite um número pra finalizar a contagem: 

set /p pas=Digite um número pra definir o passo: 

cls

echo -----

for /l %%i in (%ini%,%pas%,%fin%) do (
echo %%i
)

echo -----

echo.

pause