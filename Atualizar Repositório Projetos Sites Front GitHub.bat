@echo off

chcp 1252

title Atualizar Repositório de Projetos em Front no GitHub

color 5F

cls

set /p opc=Deseja atualizar a pasta de Projetos em Front? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

cd C:\Projetos\Git

if exist ProjetosSitesFront (
cd ProjetosSitesFront

for /d %%i in (*) do (
rmdir /s /q "%%i"
)

xcopy /s /y "C:\Projetos\Front" "."

cls

echo Operação Concluída com Êxito!
) else (
echo A pasta de Projetos em Front não Existe!

pause>nul

exit
)

echo.

set /p limp=Deseja limpar a pasta de Projetos em Front? [S/N] 

if /i %limp%==S (
cd C:\Projetos\Git

rmdir /s /q "ProjetosSitesFront"

cls

echo A Pasta de Projetos em Front foi Excluída!

pause>nul
)

exit