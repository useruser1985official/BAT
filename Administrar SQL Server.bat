@echo off

color 5F

chcp 1252

title Administrando SQL Server

cls

echo PS: É Preciso executar esse BAT como administrador!

echo.

pause

:tent
cls

set /p opc=Deseja iniciar ou parar o SQL Server? [I/P] 

if /i %opc%==I (
net start MSSQLSERVER

net start SQLSERVERAGENT

net start SQLEXPRESS

net start SQLAgent$SQLEXPRESS

net start SQLBrowser

net start SQLTELEMETRY

net start SQLTELEMETRY$SQLEXPRESS

net start SQLWriter
) else if /i %opc%==P (
net stop MSSQLSERVER

net stop SQLSERVERAGENT

net stop SQLEXPRESS

net stop SQLAgent$SQLEXPRESS

net stop SQLBrowser

net stop SQLTELEMETRY

net stop SQLTELEMETRY$SQLEXPRESS

net stop SQLWriter

taskkill /f /t /im sqlceip.exe

taskkill /f /t /im sqlservr.exe

taskkill /f /t /im sqlwriter.exe

taskkill /f /t /im ScenarioEngine.exe

taskkill /f /t /im LandingPage.exe
) else (
goto tent
)

echo.

echo Operação Realizada com Êxito!

pause>nul

exit