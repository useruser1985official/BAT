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

:: R (2):
nmap -T4 -A -v 147.79.105.65

nmap -T4 -A -v 77.37.42.109

nmap -T4 -A -v 34.120.251.119

:: E:
nmap -T4 -A -v 45.79.59.158

nmap -T4 -A -v 34.102.239.211

:: S:
nmap -T4 -A -v 104.21.86.163

nmap -T4 -A -v 172.67.221.192

cls

echo Operação Concluída com Êxito!

pause>nul