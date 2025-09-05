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

:: R:
nmap -T4 -A -v 65.181.111.13

:: F:
nmap -T4 -A -v 65.181.111.13

nmap -T4 -A -v 91.108.127.154

nmap -T4 -A -v 89.116.213.148

nmap -T4 -A -v 147.93.14.189

nmap -T4 -A -v 34.120.251.119

cls

echo Operação Concluída com Êxito!

pause>nul