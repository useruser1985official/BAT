@echo off

chcp 1252

title Remover Driver Booster

color 0C

cls

echo PS: É preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja Mesmo Deletar Todas as Pastas e Chaves do Driver Booster? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

taskkill /f /t /im taskeng.exe

taskkill /f /t /im DriverBooster.exe

taskkill /f /im explorer.exe

start explorer.exe

"%programfiles(x86)%\IObit\Driver Booster\10.3.0\unins000.exe"

pause

cd "%commonprogramfiles(x86)%\IObit"

rmdir /s /q "Driver Booster"

cd "%programfiles(x86)%\IObit"

rmdir /s /q "Driver Booster"

cd "%programdata%\IObit"

rmdir /s /q "Driver Booster"

cd "%userprofile%\Dados de Aplicativos\IObit"

rmdir /s /q "Driver Booster"

cd "%programdata%\Microsoft\Windows\Start Menu\Programs

rmdir /s /q "Driver Booster 10"

del /f "C:\Users\Public\Desktop\Driver Booster 10.lnk"

cd "%appdata%\IObit"

rmdir /s /q "Driver Booster"

reg delete "HKLM\SOFTWARE\Iobit\Driver Booster" /f

reg delete "HKLM\Software\Wow6432Node\IObit\Driver Booster" /f

schtasks /delete /f /tn "Driver Booster Scheduler"

schtasks /delete /f /tn "Driver Booster SkipUAC (%username%)"

cd %windir%

del /s /q /f Prefetch"

echo.

echo Operação Realizada com Êxito.

pause>nul