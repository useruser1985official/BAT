@echo off

chcp 1252

title Teste Nmap

color 0A

cls

echo PS: � preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja iniciar o teste com Nmap? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

nmap -T4 -A -v 65.181.111.13

nmap -T4 -A -v 84.32.84.33

nmap -T4 -A -v 191.252.101.243

cls

echo Opera��o Conclu�da com �xito!

pause>nul