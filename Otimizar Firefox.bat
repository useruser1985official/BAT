@echo off

chcp 1252

title Otimizar Firefox

color 16

cls

:: Retirar Kaspersky Extension em HKLM\SOFTWARE\Mozilla\Firefox\Extensions

set /p otimizar=Deseja corrigir todos os erros de script do Firefox? [S/N] 

if /i %otimizar% neq s (
exit
)

cls

taskkill /f /t /im firefox.exe

set firefoxest=ugltwie0.default-release-1738103026673

cd "C:\Projetos\HTML e JS\TesteArquivos\arquivos"

copy /y prefs.js %userprofile%\AppData\Roaming\Mozilla\Firefox\Profiles\%firefoxest%

cd %userprofile%\AppData\Roaming\Mozilla\Firefox\Profiles\%firefoxest%

if exist prefs.js.BAK (
del /f prefs.js.BAK & echo Arquivo prefs.js.BAK Deletado!
) else (
echo Arquivo prefs.js.BAK Não Encontrado!
)

if exist user.js (
del /f user.js & echo Arquivo user.js Deletado!
) else (
echo Arquivo user.js Não Encontrado!
)

if exist user.js.BAK (
del /f user.js.BAK & echo Arquivo user.js.BAK Deletado!
) else (
echo Arquivo user.js.BAK Não Encontrado!
)

if exist prefs1.js (
del /f prefs1.js & echo Arquivo prefs1.js Deletado!
) else (
echo Arquivo prefs1.js Não Encontrado!
)

if exist prefs_*.* (
del /f prefs_*.* & echo Arquivo prefs_*.* Deletado!
) else (
echo Arquivo prefs_*.* Não Encontrado!
)

if exist prefs-*.* (
del /f prefs-*.* & echo Arquivo prefs-*.* Deletado!
) else (
echo Arquivo prefs-*.* Não Encontrado!
)


if exist invalidprefs.js (
del /f invalidprefs.js & echo Arquivo Invalidprefs.js Deletado!
) else (
echo Arquivo invalidprefs.js Não Encontrado!
)

if exist extensions\staged (
rmdir /s /q extensions\staged & echo Diretório staged Deletado!
) else (
echo Diretório staged Não Encontrado!
)

echo.

set /p iniciar=Deseja iniciar o Firefox agora? [S/N] 

cls

taskkill /f /t /im firefox.exe

del /f /s /q %userprofile%\AppData\Local\Mozilla\Firefox\Profiles\%firefoxest%\cache2\entries

del /f /s /q %userprofile%\AppData\Local\Mozilla\Firefox\Profiles\%firefoxest%\OfflineCache

del /f /s /q %userprofile%\AppData\Roaming\Mozilla\Firefox\Profiles\%firefoxest%\extensions\staged

del /f /s /q %userprofile%\AppData\Roaming\Mozilla\Firefox\Profiles\%firefoxest%\extensions\trash

reg delete "HKU\S-1-5-18\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\webcompanion.com" /f

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\webcompanion.com" /f

reg delete "HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\webcompanion.com" /f

cls

cd "%programfiles%\Mozilla Firefox"

if /i %iniciar% equ s (
start firefox.exe about:memory about:addons & echo Firefox inicializado, minimize a memória dele. & echo.
)

echo Clique em Qualquer Tecla pra Fechar!

pause>nul

taskkill /f /t /im firefox.exe

exit