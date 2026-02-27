@echo off

chcp 1252

title Verificador de Multas

color 0E

setlocal EnableDelayedExpansion

cls

set /p vel=Qual é a velocidade atual do carro? 

if %vel% gtr 80 (
echo.

echo Você foi multado. Excedeu o limite permitido que é de 80 Km/h.

set /a exc=%vel% - 80

set /a multa=!exc! * 7

echo Sua multa é de R$!multa!,00.
)

echo.

echo Tenha um bom dia. Dirija com segurança.

pause>nul