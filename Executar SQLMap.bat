@echo off

chcp 1252

title Executar SQLMap

color 0A

cls

set sqlmap=python C:\Opcionais\sqlmap\sqlmap.py

:cont

%sqlmap%

echo.

echo Digite os parâmetros para SQLMap:

echo.

set /p entr=sqlmap 

%sqlmap% %entr%

echo.

set /p cont=Deseja continuar? [S/N] 

if /i %cont%==S (
goto cont
) else (
exit
)