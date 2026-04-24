@echo off

chcp 1252

title Atualizar Repositório de BAT no GitHub

color 5F

cls

set /p opc=Deseja atualizar a pasta de BAT? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

cd C:\Projetos\Git

if exist BAT (
cd BAT

del *.bat

xcopy /s /y "C:\Aplicações\BAT Scripts\*.bat" "."

cls

echo Operação Concluída com Êxito!
) else (
echo A pasta de BAT não Existe!

pause>nul

exit
)

echo.

set /p limp=Deseja limpar a pasta de BAT? [S/N] 

if /i %limp%==S (
cd C:\Projetos\Git

rmdir /s /q "BAT"

cls

echo A Pasta de BAT foi Excluída!

pause>nul
)

exit