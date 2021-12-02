@echo off

chcp 1252

title Remover MBAM

color f1

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover Todos os Arquivos do Malwarebytes? [S/N] 

if /i %perg% neq S (
exit
)

cls

taskkill /f /t /im taskeng.exe

taskkill /f /t /im mbam.exe

taskkill /f /t /im MBAMService.exe

taskkill /f /t /im mbamtray.exe

taskkill /f /t /im mbar.exe

taskkill /f /t /im mbar-1.10.3.1001.exe

taskkill /f /im explorer.exe

start explorer.exe

sc delete MBAMService

cd C:\Users\%username%\Desktop

rmdir /s /q mbar

cd C:\Users\%username%\Downloads

del /f mbar-1.10.3.1001.exe

del /f MBSetup.exe

cd %programfiles%

rmdir /s /q Malwarebytes

cd %programdata%

rmdir /s /q Malwarebytes

rmdir /s /q "Malwarebytes' Anti-Malware (portable)"

cd C:\Users\%username%\AppData\Local

rmdir /s /q mbam

rmdir /s /q mbamtray

reg delete HKCU\Software\Malwarebytes /f

reg delete HKLM\Software\Malwarebytes /f

reg delete "HKLM\Software\Malwarebytes Anti-Rootkit" /f

reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Malwarebytes TrayApp" /f

reg delete HKLM\System\CurrentControlSet\services\MBAMService /f

reg delete HKLM\System\CurrentControlSet\services\MBAMSwissArmy /f

start explorer.exe C:\Windows\System32\drivers

cd C:\Windows\System32\drivers

del /f 4561B1B6.sys

del /f mbamchameleon.sys

del /f mbamswissarmy.sys

del /f mbae.sys

del /f mbam.sys

del /f farflt.sys

del /f mwac.sys

cd %windir%

del /s /q /f Prefetch

echo.

echo Operação Realizada com Êxito.

pause>nul

exit