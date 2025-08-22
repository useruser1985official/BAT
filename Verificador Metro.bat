@echo off

chcp 1252

title Verificador de Metro

color F0

cls

set /p met=Digite o valor em metros: 

set /a cent=met * 100

set /a mili=met * 1000

echo.

echo %met% M equivalem à %cent% CM e a %mili% MM.

echo.

pause