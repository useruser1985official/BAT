@echo off

chcp 1252

color 2F

title Criar Pasta de Instalador do QT

cls

set /p opc=Deseja mesmo criar a pasta pra preparar o instalador? [S/N] 

if /i %opc%==S (
cd C:\Qt\Tools\QtInstallerFramework\4.3\examples\

xcopy /E /C /H startmenu %userprofile%\Desktop\startmenu\

cls

echo Opera��o Conclu�da com �xito!

pause>nul
)

cls

set /p opc=Deseja mesmo criar a pasta de debug pra deploy do programa? [S/N] 

if /i %opc%==S (
cd C:\Qt\6.2.2\mingw_64\

xcopy /E /C /H bin %userprofile%\Desktop\bin\

xcopy /E /C /H plugins %userprofile%\Desktop\plugins\

cls

echo Opera��o Conclu�da com �xito!

pause>nul
) else (
exit
)
