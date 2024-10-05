@echo off

chcp 1252

title Transfer�ncia pra Cart�o SD.

color 3E

cls

set /p opc=Deseja fazer a transfer�ncia para o cart�o SD? [S/N] 

if /i %opc%==S (
cls
) else (
exit
)

if exist E: (
rmdir /s /q "E:\Aplica��es"

rmdir /s /q "E:\Projetos"

rmdir /s /q "E:\Documents"

rmdir /s /q "E:\Pictures"

rmdir /s /q "E:\Music"

rmdir /s /q "E:\Videos"

xcopy /e /y /i "C:\Aplica��es\Criptografia" "E:\Aplica��es\Criptografia"

rmdir /s /q "E:\Aplica��es\Criptografia\Arquivos Estenografados"

xcopy /e /y /i "C:\Aplica��es\Python Scripts" "E:\Aplica��es\Python Scripts"

xcopy /e /y /i "C:\Projetos\Word" "E:\Projetos\Word"

rmdir /s /q "E:\Projetos\Word\Portf�lio\Prints"

xcopy /e /y /i "C:\Users\eu\Documents\Office" "E:\Documents\Office"

xcopy /e /y /i "C:\Users\eu\Documents\PDF" "E:\Documents\PDF"

xcopy /e /y /i "C:\Users\eu\Pictures" "E:\Pictures"

xcopy /e /y /i "C:\Users\eu\Music" "E:\Music"

rmdir /s /q "E:\Music\Playlists"

xcopy /e /y /i "C:\Users\eu\Videos\*.mp4" "E:\Videos"

rmdir /s /q "E:\Videos\Filmes"

xcopy /e /y /i "C:\Users\eu\Videos\Filmes\Desenhos (S�ries)" "E:\Videos\Desenhos (S�ries)"

cls

echo Opera��o Conclu�da com �xito!
) else if exist F: (
rmdir /s /q "F:\Aplica��es"

rmdir /s /q "F:\Projetos"

rmdir /s /q "F:\Documents"

rmdir /s /q "F:\Pictures"

rmdir /s /q "F:\Music"

rmdir /s /q "F:\Videos"

xcopy /e /y /i "C:\Aplica��es\Criptografia" "F:\Aplica��es\Criptografia"

rmdir /s /q "F:\Aplica��es\Criptografia\Arquivos Estenografados"

xcopy /e /y /i "C:\Aplica��es\Python Scripts" "F:\Aplica��es\Python Scripts"

xcopy /e /y /i "C:\Projetos\Word" "F:\Projetos\Word"

rmdir /s /q "F:\Projetos\Word\Portf�lio\Prints"

xcopy /e /y /i "C:\Users\eu\Documents\Office" "F:\Documents\Office"

xcopy /e /y /i "C:\Users\eu\Documents\PDF" "F:\Documents\PDF"

xcopy /e /y /i "C:\Users\eu\Pictures" "F:\Pictures"

xcopy /e /y /i "C:\Users\eu\Music" "F:\Music"

rmdir /s /q "E:\Music\Playlists"

xcopy /e /y /i "C:\Users\eu\Videos\*.mp4" "F:\Videos"

rmdir /s /q "F:\Videos\Filmes"

xcopy /e /y /i "C:\Users\eu\Videos\Filmes\Desenhos (S�ries)" "F:\Videos\Desenhos (S�ries)"

cls

echo Opera��o Conclu�da com �xito!
) else (
echo As Unidade E e F n�o existem! Insira o pendrive para backup e tente novamente!
)

pause>nul