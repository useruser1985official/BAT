@echo off

color 1F

chcp 1252

title Administrando PostgreSQL

cls

echo PS: � Preciso executar esse BAT como administrador!

echo.

pause

:tent
cls

set /p opc=Deseja iniciar ou parar o PostgreSQL? [I/P] 

if /i %opc%==I (
net start postgresql-x64-12
) else if /i %opc%==P (
net stop postgresql-x64-12
) else (
goto tent
)

echo Opera��o Realizada com �xito!

pause>nul

exit