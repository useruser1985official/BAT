@echo off

chcp 1252

title Verificador Par e �mpar

color B9

cls

set /p num=Me diga um n�mero qualquer: 

set /a res=num %% 2

echo.

if %res%==0 (
echo O n�mero %num% � par!
) else (
echo O n�mero %num% � �mpar!
)

echo.

pause