@echo off

chcp 1252

title Remover Unsecure

color 09

cls

echo PS: Pra limpar a pasta Prefetch é preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja Mesmo Deletar Todas as Pastas e Chaves do Unsecure? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

taskkill /f /t /im "Unsecure v2015.exe"

cd %programfiles%

rmdir /s /q Centurn

cd %userprofile%\Desktop

del /f "Unsecure v2015.exe.lnk"

cd %windir%

del /s /q /f Prefetch"

echo.

echo Operação Realizada com Êxito.

pause>nul