@echo off

chcp 1252

title Executar Aplicativos Ruby

color 4F

cls

:exec

cd "C:\Aplica��es\Ruby Scripts"

dir *.rb

echo.

set /p rub=Digite o nome da Aplica��o Ruby (com extens�o): 

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