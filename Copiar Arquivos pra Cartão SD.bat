@echo off

chcp 1252

title Transferência pra Cartão SD.

color 3E

cls

set /p opc=Deseja fazer a transferência para o cartão SD? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

if exist E: (
rmdir /s /q "E:\Aplicações"

rmdir /s /q "E:\Projetos"

rmdir /s /q "E:\Documents"

rmdir /s /q "E:\Pictures"

rmdir /s /q "E:\Music"

rmdir /s /q "E:\Videos"

xcopy /e /y /i "C:\Aplicações\Criptografia" "E:\Aplicações\Criptografia"

rmdir /s /q "E:\Aplicações\Criptografia\Arquivos Estenografados"

xcopy /e /y /i "C:\Aplicações\Python Scripts" "E:\Aplicações\Python Scripts"

xcopy /e /y /i "C:\Projetos\Word" "E:\Projetos\Word"

rmdir /s /q "E:\Projetos\Word\Portfólio\Prints"

xcopy /e /y /i "C:\Users\eu\Documents\Office" "E:\Documents\Office"

xcopy /e /y /i "C:\Users\eu\Documents\PDF" "E:\Documents\PDF"

xcopy /e /y /i "C:\Users\eu\Pictures" "E:\Pictures"

xcopy /e /y /i "C:\Users\eu\Music" "E:\Music"

rmdir /s /q "E:\Music\Playlists"

xcopy /e /y /i "C:\Users\eu\Videos\*.mp4" "E:\Videos"

rmdir /s /q "E:\Videos\Filmes"

xcopy /e /y /i "C:\Users\eu\Videos\Filmes\Desenhos (Séries)" "E:\Videos\Desenhos (Séries)"

cls

echo Operação Concluída com Êxito!
) else if exist F: (
rmdir /s /q "F:\Aplicações"

rmdir /s /q "F:\Projetos"

rmdir /s /q "F:\Documents"

rmdir /s /q "F:\Pictures"

rmdir /s /q "F:\Music"

rmdir /s /q "F:\Videos"

xcopy /e /y /i "C:\Aplicações\Criptografia" "F:\Aplicações\Criptografia"

rmdir /s /q "F:\Aplicações\Criptografia\Arquivos Estenografados"

xcopy /e /y /i "C:\Aplicações\Python Scripts" "F:\Aplicações\Python Scripts"

xcopy /e /y /i "C:\Projetos\Word" "F:\Projetos\Word"

rmdir /s /q "F:\Projetos\Word\Portfólio\Prints"

xcopy /e /y /i "C:\Users\eu\Documents\Office" "F:\Documents\Office"

xcopy /e /y /i "C:\Users\eu\Documents\PDF" "F:\Documents\PDF"

xcopy /e /y /i "C:\Users\eu\Pictures" "F:\Pictures"

xcopy /e /y /i "C:\Users\eu\Music" "F:\Music"

rmdir /s /q "E:\Music\Playlists"

xcopy /e /y /i "C:\Users\eu\Videos\*.mp4" "F:\Videos"

rmdir /s /q "F:\Videos\Filmes"

xcopy /e /y /i "C:\Users\eu\Videos\Filmes\Desenhos (Séries)" "F:\Videos\Desenhos (Séries)"

cls

echo Operação Concluída com Êxito!
) else (
echo As Unidade E e F não existem! Insira o pendrive para backup e tente novamente!
)

pause>nul