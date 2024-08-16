@echo off

chcp 1252

title Remover IObit Uninstaller

color 03

cls

echo PS: É preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja Mesmo Deletar Todas as Pastas e Chaves do Iobit Uninstaller? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

taskkill /f /t /im taskeng.exe

taskkill /f /t /im IObitUninstaller.exe

taskkill /f /t /im UninstallMonitor.exe

taskkill /f /im explorer.exe

start explorer.exe

"%programfiles(x86)%\IObit\IObit Uninstaller\unins000.exe"

pause

cd "%commonprogramfiles(x86)%\IObit"

rmdir /s /q "Iobit Uninstaller"

cd "%programfiles(x86)%\IObit"

rmdir /s /q "Iobit Uninstaller"

cd "%programdata%\IObit"

rmdir /s /q "Iobit Uninstaller"

cd "%userprofile%\Dados de Aplicativos\IObit"

rmdir /s /q "Iobit Uninstaller"

cd "%programdata%\Microsoft\Windows\Start Menu\Programs

rmdir /s /q "Iobit Uninstaller"

del /f "IObit Uninstaller.lnk"

del /f "C:\Users\Public\Desktop\IObit Uninstaller.lnk"

cd "%appdata%\IObit"

rmdir /s /q "IObit Uninstaller"

cd "%appdata%\Microsoft\Internet Explorer\Quick Launch\User Pinned\StartMenu"

del /f "Uninstall Programs.lnk"

reg delete HKLM\SOFTWARE\Iobit\Uninstaller /f

reg delete "HKCR\Directory\shellex\ContextMenuHandlers\IObitUnstaler" /f

reg delete "HKCR\*\shellex\ContextMenuHandlers\IObitUnstaler" /f

reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\IObitUnstaler" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{10921475-03CE-4E04-90CE-E2E7EF20C814}" /f

cd %windir%

del /s /q /f Prefetch"

echo.

echo Operação Realizada com Êxito.

pause>nul