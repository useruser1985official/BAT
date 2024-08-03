@echo off

chcp 1252

title Backup em Pendrive

color 1E

cls

set /p opc=Deseja fazer o backup dos dados do pendrive? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

if exist E: (
xcopy /s /y "C:\Aplicações" "E:\Aplicações"

xcopy /s /y "C:\Backgrounds" "E:\Backgrounds"

xcopy /s /y "C:\Projetos" "E:\Projetos"

rmdir /s /q "E:\Projetos\ASP Net"

rmdir /s /q "E:\Projetos\ASP Net"

rmdir /s /q "E:\Projetos\ASP Net"

rmdir /s /q "E:\Projetos\C"

rmdir /s /q "E:\Projetos\C#"

rmdir /s /q "E:\Projetos\C++"

rmdir /s /q "E:\Projetos\Git e Github"

rmdir /s /q "E:\Projetos\Java"

rmdir /s /q "E:\Projetos\Mobile Android"

rmdir /s /q "E:\Projetos\Objective-C"

rmdir /s /q "E:\Projetos\Packet Tracer"

rmdir /s /q "E:\Projetos\Perl"

rmdir /s /q "E:\Projetos\Powershell"

rmdir /s /q "E:\Projetos\Python"

rmdir /s /q "E:\Projetos\QT com C++"

rmdir /s /q "E:\Projetos\Ruby"

rmdir /s /q "E:\Projetos\Windows"

rmdir /s /q "E:\Projetos\Workbench"

xcopy /s /y "C:\Users\eu\Documents" "E:\Documentos"

rmdir /s /q "E:\Projetos\Documentos\Imagens ISO"

xcopy /s /y "C:\Users\eu\Pictures" "E:\Imagens"

xcopy /s /y "C:\Users\eu\Music" "E:\Músicas"

xcopy /s /y "C:\Users\eu\Videos\*.mp4" "E:\Vídeos"

cls

echo Operação Concluída com Êxito!
) else if exist F: (
xcopy /s /y "C:\Aplicações" "F:\Aplicações"

xcopy /s /y "C:\Backgrounds" "F:\Backgrounds"

xcopy /s /y "C:\Projetos" "F:\Projetos"

rmdir /s /q "F:\Projetos\ASP Net"

rmdir /s /q "F:\Projetos\ASP Net"

rmdir /s /q "F:\Projetos\ASP Net"

rmdir /s /q "F:\Projetos\C"

rmdir /s /q "F:\Projetos\C#"

rmdir /s /q "F:\Projetos\C++"

rmdir /s /q "F:\Projetos\Git e Github"

rmdir /s /q "F:\Projetos\Java"

rmdir /s /q "F:\Projetos\Mobile Android"

rmdir /s /q "F:\Projetos\Objective-C"

rmdir /s /q "F:\Projetos\Packet Tracer"

rmdir /s /q "F:\Projetos\Perl"

rmdir /s /q "F:\Projetos\Powershell"

rmdir /s /q "F:\Projetos\Python"

rmdir /s /q "F:\Projetos\QT com C++"

rmdir /s /q "F:\Projetos\Ruby"

rmdir /s /q "F:\Projetos\Windows"

rmdir /s /q "F:\Projetos\Workbench"

xcopy /s /y "C:\Users\eu\Documents" "F:\Documentos"

rmdir /s /q "F:\Projetos\Documentos\Imagens ISO"

xcopy /s /y "C:\Users\eu\Pictures" "F:\Imagens"

xcopy /s /y "C:\Users\eu\Music" "F:\Músicas"

xcopy /s /y "C:\Users\eu\Videos\*.mp4" "F:\Vídeos"

cls

echo Operação Concluída com Êxito!
) else (
echo As Unidade E e F não existem! Insira o pendrive para backup e tente novamente!
)

pause>nul