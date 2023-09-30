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

nmap -T4 -A -v 108.62.116.26

nmap -T4 -A -v 185.239.210.29

nmap -T4 -A -v 192.252.101.243 -Pn

cls

echo Operação Concluída com Êxito!

pause>nul