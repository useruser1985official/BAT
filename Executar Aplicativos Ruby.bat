@echo off

chcp 1252

title Executar Aplicativos Ruby

color 4F

cls

:exec

cd "C:\Aplicações\Ruby Scripts"

dir *.rb

echo.

set /p rub=Digite o nome da Aplicação Ruby (com extensão): 

cls

ruby %rub%

echo.

pause>nul

set /p perg=Deseja executar outro Arquivo Ruby? [S/N] 

if /i %perg%==S (
cls & goto exec
) else (
exit
)