@echo off

chcp 1252

title Executar Aplicativos Java

color F4

cls

:exec

cd "C:\Aplicações\Aplicativos Java"

dir *.jar

echo.

set /p jav=Digite o nome da Aplicação Java (com extensão): 

cls

java -jar %jav%

echo.

pause>nul

set /p perg=Deseja executar outro Arquivo Java? [S/N] 

if /i %perg%==S (
cls & goto exec
) else (
exit
)