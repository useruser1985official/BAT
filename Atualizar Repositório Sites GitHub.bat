@echo off

chcp 1252

title Atualizar Reposit�rio de Projetos de Site no GitHub

color 5F

cls

set /p opc=Deseja atualizar a pasta de Projetos de Sites? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

cd "C:\Projetos\Git e GitHub"

if exist ProjetosSitesCriados (
xcopy /s /y "C:\Projetos\HTML e JS" "ProjetosSitesCriados\HTML e JS"

rmdir /s /q "C:\Projetos\Git e GitHub\ProjetosSitesCriados\HTML e JS\TesteArquivos"

xcopy /s /y "C:\Projetos\JSF e JSP" "ProjetosSitesCriados\JSF e JSP"

xcopy /s /y "C:\xampp\htdocs" "ProjetosSitesCriados\PHP"

cd "C:\Projetos\Git e GitHub\ProjetosSitesCriados\PHP"

rmdir /s /q dashboard

rmdir /s /q img

rmdir /s /q webalizer

rmdir /s /q xampp

del /f applications.html

del /f bitnami.css

del /f Projetos.lnk

cls

echo Opera��o Conclu�da com �xito!
) else (
echo A pasta de Projetos de Sites n�o Existe!

pause>nul

exit
)

echo.

set /p limp=Deseja limpar a pasta de Projetos de Sites? [S/N] 

if /i %limp%==S (
cd "C:\Projetos\Git e GitHub\"

rmdir /s /q "ProjetosSitesCriados"

cls

echo A Pasta de Projetos de Sites foi Exclu�da!

pause>nul
)

exit