@echo off

chcp 1252

title Remover Vest�gios do M�dulo de Seguran�a Bradesco

color F4

cls

echo PS: � Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Remover o M�dulo de Seguran�a Bradesco? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

cd %programfiles(x86)%

rmdir /s /q scpbrad

sc delete scpbradserv

echo.

echo Opera��o Conclu�da com �xito!

pause>nul

exit