@echo off

chcp 1252

title Atualizar Repositório de Shell no GitHub

color 5F

cls

set /p opc=Deseja atualizar a pasta de Shell? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

cd C:\Projetos\Git

if exist Shell (
cd Shell

del *.sh

xcopy /s /y "C:\Aplicações\Linux\Bash Scripts\*.sh" "."

cls

echo Operação Concluída com Êxito!
) else (
echo A pasta de Shell não Existe!

pause>nul

exit
)

echo.

set /p limp=Deseja limpar a pasta de Shell? [S/N] 

if /i %limp%==S (
cd C:\Projetos\Git

rmdir /s /q "Shell"

cls

echo A Pasta de Shell foi Excluída!

pause>nul
)

exit