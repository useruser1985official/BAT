@echo off

chcp 1252

title Remover Vestígios do Módulo de Segurança Bradesco

color F4

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

cls

set /p opc=Deseja mesmo Remover o Módulo de Segurança Bradesco? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

cd %programfiles(x86)%

rmdir /s /q scpbrad

sc delete scpbradserv

echo.

echo Operação Concluída com Êxito!

pause>nul

exit