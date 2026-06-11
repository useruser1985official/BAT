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

net stop GoogleUpdaterInternalService150.0.7863.0

net stop GoogleUpdaterService150.0.7863.0

sc delete GoogleUpdaterInternalService149.0.7814.0

sc delete GoogleUpdaterService149.0.7814.0

taskkill /f /t /im chrome.exe

taskkill /f /t /im GoogleUpdate.exe

taskkill /f /t /im GoogleCrashHandler.exe

taskkill /f /t /im GoogleCrashHandler64.exe

taskkill /f /t /im software_reporter_tool.exe

schtasks /delete /tn GoogleUpdateTaskMachineCore /f

schtasks /delete /tn GoogleUpdateTaskMachineUA /f

schtasks /delete /tn "GoogleUpdaterTaskSystem150.0.7863.0{9F251043-A3FD-462C-9540-41DE0357F475}" /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdate /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdatem /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterInternalService150.0.7863.0 /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterService150.0.7863.0 /v Start /t REG_DWORD /d 3 /f

reg delete HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterInternalService149.0.7814.0 /f

reg delete HKLM\SYSTEM\CurrentControlSet\Services\GoogleUpdaterService149.0.7814.0 /f

cd "%programfiles(x86)%/Google/"

start GoogleUpdater

cd "%programfiles%/Google/Chrome/"

start Application

echo.

echo Operação Concluída com Êxito!

pause>nul

exit