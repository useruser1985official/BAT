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

net start MSSQL$SQLEXPRESS

net start MSSQL$SQLEXPRESS01

net start MSSQL$SQLEXPRESS02

net start MSSQL$SQLEXPRESS03

net start SQLSERVERAGENT

net start SQLEXPRESS

net start SQLEXPRESS01

net start SQLEXPRESS02

net start SQLEXPRESS03

net start SQLAgent$SQLEXPRESS

net start SQLAgent$SQLEXPRESS01

net start SQLAgent$SQLEXPRESS02

net start SQLAgent$SQLEXPRESS03

net start SQLBrowser

net start SQLTELEMETRY

net start SQLTELEMETRY$SQLEXPRESS

net start SQLTELEMETRY$SQLEXPRESS01

net start SQLWriter
) else if /i %opc%==P (
net stop MSSQLSERVER

net stop MSSQL$SQLEXPRESS

net stop MSSQL$SQLEXPRESS01

net stop MSSQL$SQLEXPRESS02

net stop MSSQL$SQLEXPRESS03

net stop SQLSERVERAGENT

net stop SQLEXPRESS

net stop SQLEXPRESS01

net stop SQLEXPRESS02

net stop SQLEXPRESS03

net stop SQLAgent$SQLEXPRESS

net stop SQLAgent$SQLEXPRESS01

net stop SQLAgent$SQLEXPRESS02

net stop SQLAgent$SQLEXPRESS03

net stop SQLBrowser

net stop SQLTELEMETRY

net stop SQLTELEMETRY$SQLEXPRESS

net stop SQLTELEMETRY$SQLEXPRESS01

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