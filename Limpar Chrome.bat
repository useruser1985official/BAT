@echo off

chcp 1252

title Limpar Chrome

color A4

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Limpar os vestígios da atualização do Chrome? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

net stop gupdate

net stop gupdatem

net stop GoogleChromeElevationService

net stop GoogleUpdaterInternalService159.0.8140.0

net stop GoogleUpdaterService159.0.8140.0

sc delete GoogleUpdaterInternalService157.0.8089.0

sc delete GoogleUpdaterService157.0.8089.0

taskkill /f /t /im chrome.exe

taskkill /f /t /im GoogleUpdate.exe

taskkill /f /t /im GoogleCrashHandler.exe

taskkill /f /t /im GoogleCrashHandler64.exe

taskkill /f /t /im software_reporter_tool.exe

schtasks /delete /tn GoogleUpdateTaskMachineCore /f

schtasks /delete /tn GoogleUpdateTaskMachineUA /f

schtasks /delete /tn "GoogleUpdaterTaskSystem159.0.8140.0{A80A9FD1-3533-4B6E-A77F-4A046603616A}" /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdate /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdatem /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterInternalService159.0.8140.0 /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterService159.0.8140.0 /v Start /t REG_DWORD /d 3 /f

reg delete HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterInternalService157.0.8089.0 /f

reg delete HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterService157.0.8089.0 /f

cd "%programfiles(x86)%/Google/"

start GoogleUpdater

cd GoogleUpdater

rmdir /s /q "157.0.8089.0"

cd "%programfiles%/Google/Chrome/"

start Application

echo.

echo Operação Concluída com Êxito!

pause>nul

exit