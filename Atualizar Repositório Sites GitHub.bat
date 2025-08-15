@echo off

chcp 1252

title Atualizar Repositório de Projetos de Site no GitHub

color 5F

cls

set /p opc=Deseja atualizar a pasta de Projetos de Sites? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

cd C:\Projetos\Git

if exist ProjetosSitesCriados (
cd ProjetosSitesCriados

rmdir /s /q "HTML e JS"

rmdir /s /q "JSF e JSP"

rmdir /s /q "PHP"

mkdir "HTML e JS"

mkdir "JSF e JSP"

mkdir "PHP"

xcopy /s /y "C:\Projetos\HTML e JS" "HTML e JS"

rmdir /s /q "HTML e JS\TesteArquivos"

xcopy /s /y "C:\Projetos\JSF e JSP" "JSF e JSP"

xcopy /s /y "C:\xampp\htdocs" "PHP"

cd "PHP"

rmdir /s /q dashboard

rmdir /s /q img

rmdir /s /q webalizer

rmdir /s /q xampp

del /f applications.html

del /f bitnami.css

del /f Projetos.lnk

cls

echo Operação Concluída com Êxito!
) else (
echo A pasta de Projetos de Sites não Existe!

pause>nul

exit
)

echo.

set /p limp=Deseja limpar a pasta de Projetos de Sites? [S/N] 

if /i %limp%==S (
cd C:\Projetos\Git

rmdir /s /q "ProjetosSitesCriados"

cls

echo A Pasta de Projetos de Sites foi Excluída!

pause>nul
)

exit