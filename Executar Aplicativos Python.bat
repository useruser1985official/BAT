@echo off

chcp 1252

title Executar Aplicativos Python

color 1E

cls

:exec

cd "C:\Aplica��es\Python Scripts"

set /p opc=Deseja ir para a pasta de projetos grandes? [S/N] 

cls

if /i %opc%==S (
cd "C:\Aplica��es\Python Scripts\Projetos Grandes"

dir /a:d
) else (
goto simp
)

echo.

set /p proj=Digite o nome do projeto (se tiver espa�o, coloque aspas): 

cd "C:\Aplica��es\Python Scripts\Projetos Grandes\%proj%"

:simp

dir *.py

echo.

set /p pyt=Digite o nome da Aplica��o Python (com extens�o): 

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