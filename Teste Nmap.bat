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
nmap -T4 -A -v 147.79.105.138

nmap -T4 -A -v 77.37.42.99

nmap -T4 -A -v 147.93.14.189

nmap -T4 -A -v 34.120.251.119

:: S:
nmap -T4 -A -v 172.67.221.192

nmap -T4 -A -v 104.21.86.163

cls

echo Operação Concluída com Êxito!

pause>nul