@echo off

chcp 1252

title Limpar GitHub Desktop

color 5F

cls

echo PS: � Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Limpar os vest�gios da atualiza��o do GitHub Desktop? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

taskkill /f /t /im git.exe

taskkill /f /t /im GitHubDesktop.exe

start %localappdata%/GitHubDesktop

echo.

echo Opera��o Conclu�da com �xito!

pause>nul

exit