@echo off

chcp 1252

title Remover Baidu

color 97

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover Todos os Arquivos do Baidu? [S/N] 

if /i %perg% neq S (
exit
)

cls

taskkill /f /t /im Baidu.exe

cd C:/Program Files

rmdir /s /q Baidu

cd C:/ProgramData

rmdir /s /q Baidu

rmdir /s /q "Baidu Security"

cd C:/Users/%username%/AppData/Roaming

rmdir /s /q Baidu

rmdir /s /q "Baidu Security"

reg delete HKCU\Software\Baidu /f

reg delete HKLM\Software\Baidu /f

del /f /s /q %temp%

cd %windir%

del /s /q /f Prefetch

del /s /q /f Temp

echo.

echo Operação Realizada com Êxito.

pause>nul

exit