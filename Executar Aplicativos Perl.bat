@echo off

chcp 1252

title Executar Aplicativos Perl

color 1F

cls

:exec

cd "C:\Aplica��es\Perl Scripts"

dir *.pl

echo.

set /p per=Digite o nome da Aplica��o Perl (com extens�o): 

cls

perl %per%

echo.

pause>nul

set /p perg=Deseja executar outro Arquivo Perl? [S/N] 

if /i %perg%==S (
cls & goto exec
) else (
exit
)