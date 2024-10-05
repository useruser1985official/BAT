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
rmdir /s /q "E:\Aplicações"

rmdir /s /q "E:\Backgrounds"

rmdir /s /q "E:\Projetos"

rmdir /s /q "E:\Documents"

rmdir /s /q "E:\Pictures"

rmdir /s /q "E:\Music"

rmdir /s /q "E:\Videos"

xcopy /e /y /i "C:\Aplicações" "E:\Aplicações"

xcopy /e /y /i "C:\Backgrounds" "E:\Backgrounds"

xcopy /e /y /i "C:\Projetos" "E:\Projetos"

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

rmdir /s /q "E:\Projetos\Python"

rmdir /s /q "E:\Projetos\QT com C++"

rmdir /s /q "E:\Projetos\Ruby"

rmdir /s /q "E:\Projetos\SQLite"

rmdir /s /q "E:\Projetos\Temporários"

rmdir /s /q "E:\Projetos\Windows"

rmdir /s /q "E:\Projetos\Workbench"

xcopy /e /y /i "C:\xampp\htdocs" "E:\Projetos\htdocs"

rmdir /s /q "E:\Projetos\htdocs\dashboard"

rmdir /s /q "E:\Projetos\htdocs\img"

rmdir /s /q "E:\Projetos\htdocs\webalizer"

rmdir /s /q "E:\Projetos\htdocs\xampp"

del /f "E:\Projetos\htdocs\applications.html"

del /f "E:\Projetos\htdocs\bitnami.css"

xcopy /e /y /i "C:\Users\eu\Documents" "E:\Documents"

rmdir /s /q "E:\Documents\Imagens ISO"

xcopy /e /y /i "C:\Users\eu\Pictures" "E:\Pictures"

xcopy /e /y /i "C:\Users\eu\Music" "E:\Music"

xcopy /e /y /i "C:\Users\eu\Videos\*.mp4" "E:\Videos"

rmdir /s /q "E:\Videos\Filmes"

cls

echo Operação Concluída com Êxito!
) else if exist F: (
rmdir /s /q "E:\Aplicações"

rmdir /s /q "E:\Backgrounds"

rmdir /s /q "E:\Projetos"

rmdir /s /q "E:\Documents"

rmdir /s /q "E:\Pictures"

rmdir /s /q "E:\Music"

rmdir /s /q "E:\Videos"

xcopy /s /y /i "C:\Aplicações" "F:\Aplicações"

xcopy /s /y /i "C:\Backgrounds" "F:\Backgrounds"

xcopy /s /y /i "C:\Projetos" "F:\Projetos"

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

rmdir /s /q "F:\Projetos\Python"

rmdir /s /q "F:\Projetos\QT com C++"

rmdir /s /q "F:\Projetos\Ruby"

rmdir /s /q "F:\Projetos\SQLite"

rmdir /s /q "F:\Projetos\Temporários"

rmdir /s /q "F:\Projetos\Windows"

rmdir /s /q "F:\Projetos\Workbench"

xcopy /e /y /i "C:\xampp\htdocs" "F:\Projetos\htdocs"

rmdir /s /q "F:\Projetos\htdocs\dashboard"

rmdir /s /q "F:\Projetos\htdocs\img"

rmdir /s /q "F:\Projetos\htdocs\webalizer"

rmdir /s /q "F:\Projetos\htdocs\xampp"

del /f "F:\Projetos\htdocs\applications.html"

del /f "F:\Projetos\htdocs\bitnami.css"

xcopy /e /y /i "C:\Users\eu\Documents" "F:\Documents"

rmdir /s /q "F:\Documents\Imagens ISO"

xcopy /e /y /i "C:\Users\eu\Pictures" "F:\Pictures"

xcopy /e /y /i "C:\Users\eu\Music" "F:\Music"

xcopy /e /y /i "C:\Users\eu\Videos\*.mp4" "F:\Videos"

rmdir /s /q "F:\Videos\Filmes"

cls

echo Operação Concluída com Êxito!
) else (
echo As Unidade E e F não existem! Insira o pendrive para backup e tente novamente!
)

pause>nul