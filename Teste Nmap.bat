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

nmap -T4 -A -v 89.116.213.109

nmap -T4 -A -v 91.108.127.73

nmap -T4 -A -v 147.93.14.189

nmap -T4 -A -v 34.120.251.119

nmap -T4 -A -v 172.67.221.192

nmap -T4 -A -v 104.21.86.163

cls

echo Opera��o Conclu�da com �xito!

pause>nul