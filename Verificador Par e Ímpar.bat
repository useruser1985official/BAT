@echo off

chcp 1252

title Verificador Par e Ímpar

color B9

cls

set /p num=Me diga um número qualquer: 

set /a res=num %% 2

echo.

if %res%==0 (
echo O número %num% é par!
) else (
echo O número %num% é ímpar!
)

echo.

pause