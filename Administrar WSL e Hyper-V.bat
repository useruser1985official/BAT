@echo off

color 1F

chcp 1252

title Administrando WSL/Hyper-V

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

:tent
cls

set /p opc=Deseja ativar ou desativar o WSL/Hyper-V? [A/D] 

if /i %opc%==A (
bcdedit /set hypervisorlaunchtype auto

dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
) else if /i %opc%==D (
bcdedit /set hypervisorlaunchtype off
) else (
goto tent
)

echo.

echo Operação Realizada com Êxito!

echo.

set /p reini=Deseja reiniciar o sistema agora? [S/N] 

if /i %reini%==S  (
cls

shutdown /r /f

echo Reiniciando, aguarde...

pause>nul
)