@echo off

color F1

chcp 1252

title Administrando Docker Desktop

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

:tent
cls

set /p opc=Deseja iniciar ou parar o Docker Desktop? [I/P] 

if /i %opc%==I (
net start com.docker.service
) else if /i %opc%==P (
net stop com.docker.service

taskkill /f /t /im com.docker.backend.exe

taskkill /f /t /im com.docker.build.exe

taskkill /f /t /im docker-sandbox.exe

taskkill /f /t /im wslservice.exe

taskkill /f /t /im "Docker Desktop.exe"
) else (
goto tent
)

echo.

echo Operação Realizada com Êxito!

pause>nul

exit