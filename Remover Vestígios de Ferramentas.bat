@echo off

chcp 1252

title Remover Vestígios de Ferramentas

color 74

cls

echo PS: Execute esse BAT como Administrador!

echo.

pause

cls

set /p perg=Deseja Mesmo Remover os arquivos não deletados pelo Delfix? Execute esse BAT após executar ele! [S/N] 

if /i %perg% neq S (
exit
)

cls

cd C:\Users\%username%\Desktop

del /f JRT.txt

del /f ZHPCleaner*

del /f kprm-*.txt

cd C:\Users\%username%\Downloads

del /f Adwcleaner*.exe

del /f Combofix.exe

del /f JRT.exe

del /f ZHPCleaner.exe

del /f zoek.exe

del /f KVRT.exe

del /f NPE.exe

del /f rkill.exe

del /f SpyDetectFree.zip

del /f delfix_*.exe

del /f kprm_*.exe

rmdir /s /q SpyDetectFree

cd/

del /f Combofix.txt

del /f Delfix.txt

del /f folders.log

del /f RKill.txt

del /f runcheck.txt

del /f zoek-results.log

rmdir /s /q AdwCleaner

rmdir /s /q Combofix

rmdir /s /q KPRM

rmdir /s /q KVRT_Data

rmdir /s /q KVRT2020_Data

rmdir /s /q NPE

rmdir /s /q Qoobox

rmdir /s /q zoek

rmdir /s /q zoek_backup

cd C:\Programdata

rmdir /s /q Norton

cd %LocalAppData%

rmdir /s /q NPE

rmdir /s /q ZHP

cd VirtualStore\Windows\SysWOW64\

del /f *.zoek

del /f *.search

del /f input.txt

del /f process.txt

cd %AppData%

rmdir /s /q NPE

rmdir /s /q ZHP

cd C:\Windows

del /f grep.exe

del /f NIRCMD.exe

del /f MBR.exe

del /f PEV.exe

del /f SED.exe

del /f SWREG.exe

del /f SWSC.exe

del /f SWXCACLS.exe

del /f Zip.exe

del /f zoek-delete.exe

cd System32

del /f *.zoek

del /f zoek.*

del /f zoekrun.*

cd drivers

del /f klupd_*_mark.sys

del /f klupd_*_klark.sys

reg delete HKCU\SOFTWARE\ZHP /f

reg delete HKCU\SOFTWARE\Malwarebytes /f

reg delete HKLM\SOFTWARE\Norton /f

reg delete HKLM\SOFTWARE\Swearware /f

reg delete HKLM\SOFTWARE\Malwarebytes /f

reg delete HKLM\SOFTWARE\WOW6432Node\Malwarebytes /f

reg delete HKLM\SOFTWARE\TrendMicro\Hijackthis /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\combofix.exe" /f

reg delete HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\PEVSystemStart /f

reg delete HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\PEVSystemStart /f

reg delete "HKLM\Software\Microsoft\Internet Explorer\Search\SearchAssistant" /f

schtasks /delete /tn AdwCleaner_onReboot /f

schtasks /delete /tn "Remove AdwCleaner Application" /f

schtasks /delete /tn "Uninstall AdwCleaner Application" /f

del /f /s /q %temp%

cd %windir%

del /s /q /f Prefetch

del /s /q /f Temp

echo.

echo Operação Realizada com Êxito.

pause>nul

exit