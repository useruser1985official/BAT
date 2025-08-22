@echo off

chcp 1252

title Remover Minitool Partition Wizard

color 9f

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover Todos os Arquivos do Minitool Partition Wizard? [S/N] 

if /i %perg% neq S (
exit
)

cls

taskkill /f /t /im partitionwizard.exe

cd %programfiles%

rmdir /s /q "Minitool Partition Wizard 11"

cd %programdata%

rmdir /s /q "Minitool Partition Wizard 11"

del /f "C:\Users\Public\Desktop\MiniTool Partition Wizard.lnk"

reg delete "HKCU\SOFTWARE\Minitool Software Limited" /f

reg delete "HKLM\SOFTWARE\Minitool Software Limited" /f

del /f /s /q %temp%

cd %windir%

del /s /q /f Prefetch

del /s /q /f Temp

echo.

echo Operação Realizada com Êxito.

pause>nul

exit