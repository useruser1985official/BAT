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

nmap -T4 -A -v 45.79.76.106

nmap -T4 -A -v 185.239.210.29

cls

echo Operação Concluída com Êxito!

pause>nul