@echo off

chcp 1252

title Deletar TightVNC

color F4

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover os arquivos do TightVNC? [S/N] 

if /i %perg% neq S (
exit
)

cls

cd %programfiles%

rmdir /s /q TightVNC

cd %programdata%

rmdir /s /q TightVNC

cd "%userprofile%\Dados de Aplicativos"

rmdir /s /q TightVNC

reg delete HKLM\SOFTWARE\TightVNC /f

reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v tvncontrol /f

net stop tvnserver

sc delete tvnserver

del /f /s /q %temp%

cd %windir%

del /s /q /f Prefetch

del /s /q /f Temp

echo.

echo Operação Concluída com Êxito

pause>nul