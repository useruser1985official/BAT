@echo off

color 04

chcp 1252

title Administrando CCleaner

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

:tent
cls

set /p opc=Deseja iniciar ou parar o CCleaner? [I/P] 

if /i %opc%==I (
net start CCleaner7
) else if /i %opc%==P (
net stop CCleaner7

taskkill /f /t /im CCleaner.exe
) else (
goto tent
)

echo.

echo Operação Realizada com Êxito!

pause>nul

exit