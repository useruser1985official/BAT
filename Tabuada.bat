@echo off

chcp 1252

title Tabuada em BAT

color B1

cls

setlocal EnableDelayedExpansion

:inicio
set /p num=Digite um número para ver sua tabuada: 

echo.

echo Tabuada de %num%:

echo.

echo --------------

set cont=1

for /l %%t in (1,1,10) do (
set /a res=%num% * !cont!

echo %num% x !cont! = !res!

set /a cont+=1
)

echo --------------

echo.

set /p opc=Deseja digitar outros números? [S/N] 

if /i %opc%==S (
cls

goto inicio
) else (
exit
)