@echo off

chcp 1252

title Limpar Chrome

color a4

cls

echo PS: � Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Limpar os vest�gios da atualiza��o do Chrome? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

net stop gupdate

net stop gupdatem

net stop GoogleChromeElevationService

taskkill /f /t /im chrome.exe

taskkill /f /t /im GoogleUpdate.exe

taskkill /f /t /im GoogleCrashHandler.exe

taskkill /f /t /im GoogleCrashHandler64.exe

taskkill /f /t /im software_reporter_tool.exe

schtasks /delete /tn GoogleUpdateTaskMachineCore /f

schtasks /delete /tn GoogleUpdateTaskMachineUA /f

schtasks /delete /tn "GoogleUpdaterTaskSystem138.0.7156.0{CF6E4986-6089-4FD2-8788-713C8A60B759}" /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdate /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdatem /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService /v Start /t REG_DWORD /d 3 /f

cd "%programfiles(x86)%/Google/"

start GoogleUpdater

cd "%programfiles%/Google/Chrome/"

start Application

sc delete GoogleUpdaterInternalService138.0.7156.0

sc delete GoogleUpdaterService138.0.7156.0

echo.

echo Opera��o Conclu�da com �xito!

pause>nul

exit