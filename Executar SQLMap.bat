@echo off

chcp 1252

title Executar SQLMap

color 0A

cls

set /p atu=Deseja Atualizar o SQLMap primeiro? [S/N] 

if /i %atu%==S (
goto upd
) else (
cls
)

:cont

set sqlmap=python C:\Opcionais\sqlmap\sqlmap.py

%sqlmap%

echo.

echo Digite os par�metros para SQLMap:

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

:upd

:: Comando atualiza��o

cd C:\Opcionais\sqlmap

git fetch https://github.com/sqlmapproject/sqlmap.git

git pull https://github.com/sqlmapproject/sqlmap.git

cls

echo SQLMap Atualizado com �xito!

echo.

pause

cls

goto cont

:: rmdir /s /q %localappdata%\sqlmap