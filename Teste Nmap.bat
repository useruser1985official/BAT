@echo off

chcp 1252

title Teste Nmap

color 0A

cls

echo PS: É preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja iniciar o teste com Nmap? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

nmap -T4 -A -v 65.181.111.13

nmap -T4 -A -v 77.37.42.107

nmap -T4 -A -v 147.93.14.189

nmap -T4 -A -v 34.120.251.119

cls

echo Operação Concluída com Êxito!

pause>nul