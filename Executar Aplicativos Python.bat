@echo off

chcp 1252

title Executar Aplicativos Python

color 1E

cls

:exec

cd "C:\Aplicações\Python Scripts"

set /p opc=Deseja ir para a pasta de projetos grandes? [S/N] 

cls

if /i %opc%==S (
cd "C:\Aplicações\Python Scripts\Projetos Grandes"

dir /a:d
) else (
goto simp
)

echo.

set /p proj=Digite o nome do projeto (se tiver espaço, coloque aspas): 

cd "C:\Aplicações\Python Scripts\Projetos Grandes\%proj%"

:simp

dir *.py

echo.

set /p pyt=Digite o nome da Aplicação Python (com extensão): 

cls

python %pyt%

echo.

pause>nul

set /p perg=Deseja executar outro Arquivo Python? [S/N] 

if /i %perg%==S (
cls & goto exec
) else (
exit
)