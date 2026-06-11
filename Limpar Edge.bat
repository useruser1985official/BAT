@echo off

chcp 1252

title Limpar Edge

color F1

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Limpar os vestígios da atualização do Edge? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

net stop edgeupdate

net stop edgeupdatem

net stop MicrosoftEdgeElevationService

taskkill /f /t /im msedge.exe

taskkill /f /t /im MicrosoftEdgeUpdate.exe

taskkill /f /t /im msedgewebview2.exe

reg add HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService /v Start /t REG_DWORD /d 3 /f

cd "%programfiles(x86)%/Microsoft/"

start EdgeUpdate

start EdgeCore

cd "%programfiles(x86)%/Microsoft/Edge/"

start Application

echo.

echo Operação Concluída com Êxito!

pause>nul

exit