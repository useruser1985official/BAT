@echo off

chcp 1252

title Remover Bright Data

color f1

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover Todos os Arquivos do Bright Data? [S/N] 

if /i %perg% neq S (
exit
)

cls

taskkill /f /t /im BrightData.exe

cd "C:/Program Files"

rmdir /s /q BrightData

cd "C:/Program Files (x86)"

rmdir /s /q BrightData

cd C:/ProgramData

rmdir /s /q BrightData

cd C:/Users/%username%/AppData/Roaming

rmdir /s /q BrightData

reg delete HKCU\Software\BrightData /f

reg delete HKLM\Software\BrightData /f

del /f /s /q %temp%

cd %windir%

del /s /q /f Prefetch

del /s /q /f Temp

echo.

echo Operação Realizada com Êxito.

pause>nul

exit