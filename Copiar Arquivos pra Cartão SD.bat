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
xcopy /s /y "C:\Aplica��es\Criptografia" "E:\Aplica��es\Criptografia"

xcopy /s /y "C:\Aplica��es\Python Scripts" "E:\Aplica��es\Python Scripts"

xcopy /s /y "C:\Projetos\Word" "E:\Projetos\Word"

xcopy /s /y "C:\Users\eu\Documents\Office" "E:\Documentos\Office"

xcopy /s /y "C:\Users\eu\Documents\PDF" "E:\Documentos\PDF"

xcopy /s /y "C:\Users\eu\Pictures" "E:\Imagens"

xcopy /s /y "C:\Users\eu\Music" "E:\M�sicas"

xcopy /s /y "C:\Users\eu\Videos\*.mp4" "E:\V�deos"

cls

echo Opera��o Conclu�da com �xito!
) else if exist F: (
xcopy /s /y "C:\Aplica��es\Criptografia" "F:\Aplica��es\Criptografia"

xcopy /s /y "C:\Aplica��es\Python Scripts" "F:\Aplica��es\Python Scripts"

xcopy /s /y "C:\Projetos\Word" "F:\Projetos\Word"

xcopy /s /y "C:\Users\eu\Documents\Office" "F:\Documentos\Office"

xcopy /s /y "C:\Users\eu\Documents\PDF" "F:\Documentos\PDF"

xcopy /s /y "C:\Users\eu\Pictures" "F:\Imagens"

xcopy /s /y "C:\Users\eu\Music" "F:\M�sicas"

xcopy /s /y "C:\Users\eu\Videos\*.mp4" "F:\V�deos"

cls

echo Opera��o Conclu�da com �xito!
) else (
echo As Unidade E e F n�o existem! Insira o pendrive para backup e tente novamente!
)

pause>nul