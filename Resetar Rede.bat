@echo off

chcp 1252

title Resetar Rede

color 0A

cls

echo PS: � preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja Mesmo Resetar as Op��es de Rede? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

ipconfig /release "Ethernet"

ipconfig /release6 "Ethernet"

ipconfig /flushdns

net stop dnscache

net stop dhcp

net start dnscache

net start dhcp

ipconfig /registerdns

ipconfig /renew "Ethernet"

ipconfig /renew6 "Ethernet"

arp /a /d

netsh interface ip delete arpcache

netsh interface ip delete destinationcache

nbtstat /R

nbtstat /RR

netsh int ip reset all

netsh winsock reset

netsh winsock reset catalog

netsh advfirewall reset

netsh winhttp reset proxy

echo.

echo Opera��o Realizada com �xito!

echo.

set /p reini=Deseja reiniciar o sistema agora? [S/N] 

if /i %reini%==S  (
cls

shutdown /r /f

echo Reiniciando, aguarde...

pause>nul
)