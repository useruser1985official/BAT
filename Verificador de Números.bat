@echo off

chcp 1252

title Verificador de Números

color 4A

cls

set /p num=Informe um número de 0 a 9999: 

set /a u=%num% / 1 %% 10

set /a d=%num% / 10 %% 10

set /a c=%num% / 100 %% 10

set /a m=%num% / 1000 %% 10

echo.

echo Unidade: %u%

echo Dezena: %d%

echo Centena: %c%

echo Milhar: %m%

echo.

pause
