@echo off

chcp 1252

title Limpar GitHub Desktop

color 5F

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Limpar os vestígios da atualização do GitHub Desktop? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

taskkill /f /t /im git.exe

taskkill /f /t /im GitHubDesktop.exe

start %localappdata%/GitHubDesktop

echo.

echo Operação Concluída com Êxito!

pause>nul

exit