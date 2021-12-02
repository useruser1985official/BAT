@echo off

chcp 1252

title Limpar Opera

color 74

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Limpar os vestígios da atualização do Opera? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

taskkill /f /t /im opera.exe

taskkill /f /t /im launcher.exe

cd %localappdata%/Programs/Opera

del *.old

del *.backup

start %localappdata%/Programs/Opera

schtasks /delete /tn "Opera scheduled Autoupdate 1559311787" /f

echo.

echo Operação Concluída com Êxito!

pause>nul

exit