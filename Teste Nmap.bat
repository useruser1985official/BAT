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

nmap -T4 -A -v 89.116.213.205

nmap -T4 -A -v 77.37.42.209

nmap -T4 -A -v 147.93.14.189

nmap -T4 -A -v 34.120.251.119

nmap -T4 -A -v 104.21.86.163

nmap -T4 -A -v 172.67.221.192

cls

echo Operação Concluída com Êxito!

pause>nul