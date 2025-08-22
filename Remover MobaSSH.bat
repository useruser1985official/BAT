@echo off

chcp 1252

title Deletar MobaSSH

color 74

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover os arquivos do MobaSSH? [S/N] 

if /i %perg% neq S (
exit
)

cls

cd %programfiles%

rmdir /s /q MobaSSH

cd %programdata%

rmdir /s /q MobaSSH

reg delete HKCU\SOFTWARE\Cygwin /f

reg delete "HKCU\SOFTWARE\Mobatek Software" /f

reg delete HKLM\SOFTWARE\Cygwin /f

reg delete "HKLM\SOFTWARE\Mobatek Software" /f

net stop MobaSSH

sc delete MobaSSH

del /f /s /q %temp%

cd %windir%

del /s /q /f Prefetch

del /s /q /f Temp

echo.

echo Operação Concluída com Êxito

pause>nul