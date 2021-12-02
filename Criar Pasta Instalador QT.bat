@echo off

chcp 1252

color 2F

title Criar Pasta de Instalador do QT

cls

set /p opc=Deseja mesmo criar a pasta pra preparar o instalador? [S/N] 

if /i %opc%==S (
cd C:\Qt\Tools\QtInstallerFramework\3.1\examples\

xcopy /E /C /H startmenu %userprofile%\Desktop\startmenu\

cls

echo Operação Concluída com Êxito!

pause>nul
)

cls

set /p opc=Deseja mesmo criar a pasta de debug pra deploy do programa? [S/N] 

if /i %opc%==S (
cd C:\Qt\5.13.0\mingw73_32\

xcopy /E /C /H bin %userprofile%\Desktop\bin\

xcopy /E /C /H plugins %userprofile%\Desktop\plugins\

cls

echo Operação Concluída com Êxito!

pause>nul
) else (
exit
)
