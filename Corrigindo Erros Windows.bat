@echo off

chcp 1252

color 0A

title Corrigindo Erros

cls

echo PS: É preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja Mesmo Corrigir os Erros do Windows? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

chkdsk /f

chkdsk /scan /forceofflinefix

sfc /scannow

set /p cont=Deseja Continuar? [S/N] 

if /i %cont%==S (
dism /online /cleanup-image /scanhealth

dism /online /cleanup-image /restorehealth
)