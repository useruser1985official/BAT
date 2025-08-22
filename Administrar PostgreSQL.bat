@echo off

color 1F

chcp 1252

title Administrando PostgreSQL

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

:tent
cls

set /p opc=Deseja iniciar ou parar o PostgreSQL? [I/P] 

if /i %opc%==I (
net start postgresql-x64-14
) else if /i %opc%==P (
net stop postgresql-x64-14

taskkill /f /t /im pgAdmin4.exe

taskkill /f /t /im postgres.exe

taskkill /f /t /im pg_ctl.exe

taskkill /f /t /im python.exe
) else (
goto tent
)

echo.

echo Operação Realizada com Êxito!

pause>nul

exit