@echo off

chcp 1252

title Remover AVG

color 06

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover Todos os Arquivos do AVG? Execute primeiro o AVG Remover. [S/N] 

if /i %perg% neq S (
exit
)

cls

taskkill /f /t /im avguix.exe

taskkill /f /t /im avgfwmremover.exe

taskkill /f /t /im pctremoverx.exe

taskkill /f /t /im taskeng.exe

cd C:\Users\%username%\Downloads

del /f AVG_Remover.exe

del /f AVG_Performance_709.exe

cd C:\Users\Public\Desktop

del /f AVG.lnk

del /f "AVG PC TuneUp.lnk"

cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs

del /f "AVG.lnk"

del /f "AVG PC TuneUp.lnk"

rmdir /s /q AVG

rmdir /s /q "AVG PC TuneUp"

cd\

rmdir /s /q AVG_Remover

cd C:\Program Files

rmdir /s /q AVG

cd C:\ProgramData

rmdir /s /q AVG

cd C:\Users\%username%\AppData\Local

rmdir /s /q AVG

rmdir /s /q AVGSetupLog

cd C:\Users\%username%\AppData\Roaming

rmdir /s /q AVG

cd "C:\Windows\System32\config\systemprofile\AppData\Local"

rmdir /s /q AVG

sc delete avgsvc

sc delete TuneUp.UtilitiesSvc

schtasks /delete /tn "AVG EUpdate Task" /f

reg delete "HKCR\*\shellex\ContextMenuHandlers\AVG Shredder Shell Extension" /f

reg delete HKCR\.avgdi\shell\FmwAvgDiExOpen /f

reg delete HKCR\.avgdx\shell\FmwAvgDxExOpen /f

reg delete "HKCR\Directory\shellex\ContextMenuHandlers\AVG Shredder Shell Extension" /f

reg delete "HKCR\Directory\shellex\ContextMenuHandlers\AVG Disk Space Explorer Shell Extension" /f

reg delete HKCR\Installer\Products\4AF3F93FEDE4CEB4A963D1D437F324E9 /f

reg delete HKCR\Installer\Products\5DC719C8D1679144C80FBB3BE0B3B516 /f

reg delete HKCR\Installer\Products\7C9C3D4252FD86E47A4893A2BA513930 /f

reg delete HKCR\Installer\Products\A6C44AAAF6BBAC6419F88CF8208C3E10 /f

reg delete HKCR\Installer\Products\D13703593BCD20742859B7BA1E078377 /f

reg delete HKCR\Installer\Products\F443931E1DAB4934EBCBA912F541A673 /f

reg delete HKCR\Installer\Products\F7ACD7EDAD0D2C149A6ABEC91ED2AB9F /f

reg delete HKCU\Software\AVG /f

reg delete "HKCU\Software\AVG Persistent" /f

reg delete HKCU\Software\TuneUp /f

reg delete HKLM\Software\AVG /f

reg delete "HKLM\Software\AVG Persistent" /f

reg delete HKLM\Software\TuneUp /f

reg delete "HKLM\Software\Microsoft\Shared Tools\MSConfig\startupreg" /v AvgUi /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v AvgUi /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\4AF3F93FEDE4CEB4A963D1D437F324E9 /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\5DC719C8D1679144C80FBB3BE0B3B516 /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\7C9C3D4252FD86E47A4893A2BA513930 /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\A6C44AAAF6BBAC6419F88CF8208C3E10 /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\D13703593BCD20742859B7BA1E078377 /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\F443931E1DAB4934EBCBA912F541A673 /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\F7ACD7EDAD0D2C149A6ABEC91ED2AB9F /f

reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\AVG PC TuneUp" /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{8C917CD5-761D-4419-8CF0-BBB30E3B5B61} /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{24D3C9C7-DF25-4E68-A784-392AAB159303} /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{9530731D-DCB3-4702-8295-7BABE1703877} /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{AAA44C6A-BB6F-46CA-918F-C88F02C8E301} /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{DE7DCA7F-D0DA-41C2-A9A6-EB9CE12DBAF9} /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{E139344F-BAD1-4394-BEBC-9A215F146A37} /f

reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{F39F3FA4-4EDE-4BEC-9A36-1D4D733F429E} /f

reg delete HKLM\System\ControlSet001\services\avgsvc /f

reg delete HKLM\System\ControlSet001\services\avgunivx /f

reg delete "HKLM\System\ControlSet001\services\TuneUp.UtilitiesSvc" /f

reg delete "HKLM\System\ControlSet001\services\TuneUpUtilitiesDrv" /f

reg delete HKLM\System\ControlSet001\services\avgsvc /f

reg delete HKLM\System\ControlSet001\services\avgunivx /f

reg delete "HKLM\System\ControlSet001\services\TuneUp.UtilitiesSvc" /f

reg delete "HKLM\System\ControlSet001\services\TuneUpUtilitiesDrv" /f

reg delete HKLM\System\CurrentControlSet\services\avgsvc /f

reg delete HKLM\System\CurrentControlSet\services\avgunivx /f

reg delete "HKLM\System\CurrentControlSet\services\TuneUp.UtilitiesSvc" /f

reg delete "HKLM\System\CurrentControlSet\services\TuneUpUtilitiesDrv" /f

del /f /s /q %temp%

cd %windir%

del /s /q /f Prefetch

del /s /q /f Temp

echo.

echo Operação Realizada com Êxito.

pause>nul

exit