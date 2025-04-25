@echo off

chcp 1252

title Deletar Temporários

color 1F

cls

echo PS: Pra limpar a pasta Prefetch é preciso executar esse BAT como administrador!

echo.

set /p opc=Deseja mesmo deletar todos os arquivos temporários e encerrar processos desnecessários? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

set /p cach=Deseja limpar o cache dos navegadores? [S/N] 

cls

set /p pref=Deseja limpar o Prefetch? [S/N] 

cls

set /p upd=Deseja limpar o Windows Update? [S/N] 

cls

set /p sih=Deseja reiniciar o Shell Infrastructure Host? [S/N] 

cls

net stop AdobeARMservice

net stop PolicyAgent

net stop TrkWks

net stop VSS

net stop aeLookupSvc

net stop seclogon

net stop WPCSvc

net stop Browser

net stop HomeGroupProvider

net stop ssh-agent

net stop sshd

net stop postgresql-x64-14

net stop RemoteRegistry

net stop RemoteAccess

net stop LanmanServer

net stop WMPNetworkSvc

net stop TabletInputService

net stop gupdate

net stop gupdatem

net stop GoogleChromeElevationService

net stop edgeupdate

net stop edgeupdatem

net stop MSSQLSERVER

net stop MSSQL$SQLEXPRESS

net stop MSSQL$SQLEXPRESS01

net stop MSSQL$SQLEXPRESS02

net stop SQLSERVERAGENT

net stop SQLEXPRESS

net stop SQLEXPRESS01

net stop SQLEXPRESS02

net stop SQLAgent$SQLEXPRESS

net stop SQLAgent$SQLEXPRESS01

net stop SQLAgent$SQLEXPRESS02

net stop SQLBrowser

net stop SQLTELEMETRY

net stop SQLTELEMETRY$SQLEXPRESS

net stop SQLTELEMETRY$SQLEXPRESS01

net stop SQLWriter

cls

taskkill /f /t /im msiexec.exe

taskkill /f /t /im setup.exe

taskkill /f /t /im RdrCEF.exe

taskkill /f /t /im Acrobat.exe

taskkill /f /t /im AcroCEF.exe

taskkill /f /t /im AdobeARM.exe

taskkill /f /t /im AcrobatNotificationClient.exe

taskkill /f /t /im AdobeCollabSync.exe

taskkill /f /t /im armsvc.exe

taskkill /f /t /im GoogleUpdate.exe

taskkill /f /t /im GoogleCrashHandler.exe

taskkill /f /t /im GoogleCrashHandler64.exe

taskkill /f /t /im software_reporter_tool.exe

taskkill /f /t /im opera_autoupdate.exe

taskkill /f /t /im MicrosoftEdgeUpdate.exe

taskkill /f /t /im java.exe

taskkill /f /t /im javaw.exe

taskkill /f /t /im javac.exe

taskkill /f /t /im jmc.exe

taskkill /f /t /im python.exe

taskkill /f /t /im pythonw.exe

taskkill /f /t /im perl.exe

taskkill /f /t /im ruby.exe

taskkill /f /t /im node.exe

taskkill /f /t /im kotlin.exe

taskkill /f /t /im kotlinc.exe

taskkill /f /t /im VBoxSDS.exe

taskkill /f /t /im VBoxSVC.exe

taskkill /f /t /im VirtualBox.exe

taskkill /f /t /im gpa.exe

taskkill /f /t /im gpg.exe

taskkill /f /t /im gpg-agent.exe

taskkill /f /t /im gpg-connect-agent.exe

taskkill /f /t /im scdaemon.exe

taskkill /f /t /im dirmngr.exe

taskkill /f /t /im kleopatra.exe

taskkill /f /t /im ServiceHub.Host.Node.x86.exe

taskkill /f /t /im ServiceHub.IdentityHost.exe

taskkill /f /t /im ServiceHub.RoslynCodeAnalysisService32.exe

taskkill /f /t /im PerfWatson2.exe

taskkill /f /t /im VBCSCompiler.exe

taskkill /f /t /im vs_installer.exe

taskkill /f /t /im vs_installerservice.exe

taskkill /f /t /im vs_installershell.exe

taskkill /f /t /im Blend.exe

taskkill /f /t /im devenv.exe

taskkill /f /t /im VSIXConfigurationUpdater.exe

taskkill /f /t /im sqlceip.exe

taskkill /f /t /im sqlservr.exe

taskkill /f /t /im sqlwriter.exe

taskkill /f /t /im Ssms.exe

taskkill /f /t /im ScenarioEngine.exe

taskkill /f /t /im LandingPage.exe

taskkill /f /t /im Code.exe

taskkill /f /t /im netbeans64.exe

taskkill /f /t /im SceneBuilder.exe

taskkill /f /t /im pycharm64.exe

taskkill /f /t /im studio64.exe

taskkill /f /t /im idea64.exe

taskkill /f /t /im fsnotifier.exe

taskkill /f /t /im codeblocks.exe

taskkill /f /t /im cb_share_config.exe

taskkill /f /t /im cb_console_runner.exe

taskkill /f /t /im xampp-control.exe

taskkill /f /t /im httpd.exe

taskkill /f /t /im mysqld.exe

taskkill /f /t /im MySQLWorkbench.exe

taskkill /f /t /im pgAdmin4.exe

taskkill /f /t /im postgres.exe

taskkill /f /t /im pg_ctl.exe

taskkill /f /t /im stackbuilder.exe

taskkill /f /t /im sqlite3.exe

taskkill /f /t /im SQLiteStudio.exe

taskkill /f /t /im SearchProtocolHost.exe

taskkill /f /t /im qtcreator.exe

taskkill /f /t /im MaintenanceTool.exe

taskkill /f /t /im nmap.exe

taskkill /f /t /im zenmap.exe

taskkill /f /t /im Wireshark.exe

taskkill /f /t /im PacketTracer.exe

taskkill /f /t /im visualg30.exe

taskkill /f /t /im iTopVPN.exe

taskkill /f /t /im iTopVPNMini.exe

taskkill /f /t /im Havij.exe

taskkill /f /t /im "Unsecure v2015.exe"

taskkill /f /t /im git.exe

taskkill /f /t /im GitHubDesktop.exe

taskkill /f /t /im plugin-container.exe

taskkill /f /t /im GameBar.exe

taskkill /f /t /im GameBarFTServer.exe

taskkill /f /t /im PubMonitor.exe

taskkill /f /t /im PubPlatform.exe

taskkill /f /t /im AutoUpdate.exe

taskkill /f /t /im IObitLiveUpdate.exe

taskkill /f /t /im PPUninstaller.exe

taskkill /f /t /im AutoSweep.exe

taskkill /f /t /im SDbf2023.exe

taskkill /f /t /im SDxr2023.exe

taskkill /f /t /im Reminder.exe

taskkill /f /t /im itopbfp23.exe

taskkill /f /t /im ascnewl18.exe

if /i %cach% neq S (
goto cont
)

taskkill /f /t /im iexplore.exe

taskkill /f /t /im msedge.exe

taskkill /f /t /im msedgewebview2.exe

taskkill /f /t /im firefox.exe

taskkill /f /t /im chrome.exe

taskkill /f /t /im opera.exe

taskkill /f /t /im tor.exe

taskkill /f /t /im olk.exe

taskkill /f /t /im Skype.exe

taskkill /f /t /im SkypeApp.exe

taskkill /f /t /im SkypeBackgroundHost.exe

taskkill /f /t /im SkypeBridge.exe

taskkill /f /t /im transmission-qt.exe

set firefoxest=ugltwie0.default-release-1738103026673

cls

del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"

del /f /s /q "%systemdirectory%\config\systemprofile\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"

del /f /s /q %userprofile%\AppData\Local\Mozilla\Firefox\Profiles\%firefoxest%\cache2\entries

del /f %appdata%\Mozilla\Firefox\Profiles\%firefoxest%\user.js

del /f %appdata%\Mozilla\Firefox\Profiles\%firefoxest%\invalidprefs.js

rmdir /s /q %appdata%\Mozilla\Firefox\Profiles\%firefoxest%\extensions\staged

del /f /s /q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\Cache"

del /f /s /q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\GPUCache"

del /f /s /q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage"

del /f /s /q "%userprofile%\AppData\Local\Microsoft\Edge\User Data\Default\File System"

del /f /s /q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache"

del /f /s /q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\GPUCache"

del /f /s /q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Service Worker\CacheStorage"

del /f /s /q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\File System"

del /f /s /q "%userprofile%\AppData\Local\Opera Software\Opera Stable\cache"

del /f /s /q "%appdata%\Opera Software\Opera Stable\GPUCache"

del /f /s /q "%appdata%\Opera Software\Opera Stable\ShaderCache"

cls

:cont

reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "CCleaner Monitoring" /f

reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "CCleaner Smart Cleaning" /f

reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v utweb /f

reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MicrosoftEdgeAutoLaunch_AF623091453CC2E58F15E4A702B7C681 /f

:: reg add HKLM\SYSTEM\CurrentControlSet\Services\AdvancedSystemCareService18 /v Start /t REG_DWORD /d 3 /f

:: reg add HKLM\SYSTEM\CurrentControlSet\Services\AdvancedSystemCareService18 /v DelayedAutoStart /t REG_DWORD /d 1 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\AdobeARMservice /v Start /t REG_DWORD /d 4 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\postgresql-x64-14 /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdate /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\gupdatem /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem /v Start /t REG_DWORD /d 3 /f

reg add HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService /v Start /t REG_DWORD /d 3 /f

schtasks /delete /tn "Adobe Acrobat Update Task" /f

schtasks /delete /tn "CCleaner Update" /f

schtasks /delete /tn CCleanerCrashReporting /f

schtasks /delete /tn "Opera scheduled Autoupdate 1559311787" /f

schtasks /delete /tn "Opera scheduled assistant Autoupdate 1582737323" /f

schtasks /delete /tn S-1-5-21-16109959-1652163829-3163686721-1003 /f

schtasks /delete /tn npcapwatchdog /f

schtasks /delete /tn GoogleUpdateTaskMachineCore /f

schtasks /delete /tn GoogleUpdateTaskMachineUA /f

schtasks /delete /tn MicrosoftEdgeUpdateTaskMachineCore /f

schtasks /delete /tn MicrosoftEdgeUpdateTaskMachineUA /f

schtasks /delete /tn MicrosoftEdgeUpdateTaskMachineCore{D239C5E7-E368-49A8-8002-BF3A1C3DF200} /f

schtasks /delete /tn MicrosoftEdgeUpdateTaskMachineUA{5B02D31F-F103-40DE-B1E7-05B4BD091E8C} /f

schtasks /delete /tn "Firefox Background Update 308046B0AF4A39CB" /f

schtasks /delete /tn "Firefox Default Browser Agent 308046B0AF4A39CB" /f

schtasks /delete /tn IObitSelfCheckTask /f

schtasks /delete /tn iTopVPN_Scheduler_eu /f

schtasks /delete /tn iTopVPN_SkipUAC_eu /f

schtasks /delete /tn iTopVPN_Update_eu /f

schtasks /delete /tn "iTop easter Task (One-Time)" /f

schtasks /delete /tn "iTop summer Task (One-Time)" /f

schtasks /delete /tn "IObit SumSale2024 (One-Time)" /f

schtasks /delete /tn "Firefox Default Browser Agent 308046B0AF4A39CB" /f

schtasks /delete /tn CreateExplorerShellUnelevatedTask /f

powercfg.exe /hibernate off

cls

cd %programdata%

if exist BrightData (
rmdir /s /q BrightData
)

if exist ProductData (
rmdir /s /q ProductData
)

if exist ProductData3 (
rmdir /s /q ProductData3
)

if exist Protexis64 (
rmdir /s /q Protexis64
)

del /f /s /q %userprofile%\AppData\Local\CrashDumps

del /f /s /q %userprofile%\AppData\Local\Microsoft\Windows\WebCache

del /f /s /q %temp%

cd/

rmdir /s /q .Trash-1000

cd %appdata%

if exist productdata (
rmdir /s /q productdata
)

cd %windir% 

if /i %pref%==S (
rmdir /s /q Prefetch\ReadyBoot

del /s /q /f Prefetch
)

del /s /q /f Temp

if /i %upd%==S (
del /f /a:h %localappdata%\IconCache.db

del /s /q /f SoftwareDistribution\Download

del /s /q /f servicing\LCU
)

if /i %sih%==S (
taskkill /f /t /im sihost.exe

taskkill /f /t /im ASC.exe

taskkill /f /t /im ASCTray.exe

taskkill /f /t /im SmartDefrag.exe

taskkill /f /t /im Photos.exe
)

echo.

if /i %cach%==S (
echo O cache dos navegadores foram limpos!
)

if /i %pref%==S (
echo O Prefetch foi limpo!
)

if /i %upd%==S (
echo O Windows Update foi limpo!
)

if /i %sih%==S (
echo O Sihost foi reiniciado!
)

echo Operação Concluída com Êxito!

pause>nul