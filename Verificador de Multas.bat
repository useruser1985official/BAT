@echo off

chcp 1252

title Verificador de Multas

color 0E

setlocal EnableDelayedExpansion

cls

set /p vel=Qual � a velocidade atual do carro? 

if %vel% gtr 80 (
echo.

echo Voc� foi multado. Excedeu o limite permitido que � de 80 Km/h.

set /a exc=%vel% - 80

set /a multa=!exc! * 7

echo Sua multa � de R$!multa!,00.
)

echo.

echo Tenha um bom dia. Dirija com seguran�a.

pause>nul