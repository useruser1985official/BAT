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

net stop GoogleUpdaterInternalService144.0.7547.0

net stop GoogleUpdaterService144.0.7547.0

sc delete GoogleUpdaterInternalService143.0.7482.0

sc delete GoogleUpdaterService143.0.7482.0

taskkill /f /t /im chrome.exe

taskkill /f /t /im GoogleUpdate.exe

taskkill /f /t /im GoogleCrashHandler.exe

taskkill /f /t /im GoogleCrashHandler64.exe

taskkill /f /t /im software_reporter_tool.exe

schtasks /delete /tn GoogleUpdateTaskMachineCore /f

schtasks /delete /tn GoogleUpdateTaskMachineUA /f

schtasks /delete /tn "GoogleUpdaterTaskSystem144.0.7547.0{2BB44611-FDFA-4C7B-809F-74ADFD208C7B}" /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdate /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdatem /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterInternalService144.0.7547.0 /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterService144.0.7547.0 /v Start /t REG_DWORD /d 3 /f

cd "%programfiles(x86)%/Google/"

start GoogleUpdater

cd "%programfiles%/Google/Chrome/"

start Application

echo.

echo Operação Concluída com Êxito!

pause>nul

exit