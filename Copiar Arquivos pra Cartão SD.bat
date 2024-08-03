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
xcopy /s /y "C:\Aplicações\Criptografia" "E:\Aplicações\Criptografia"

xcopy /s /y "C:\Aplicações\Python Scripts" "E:\Aplicações\Python Scripts"

xcopy /s /y "C:\Projetos\Word" "E:\Projetos\Word"

xcopy /s /y "C:\Users\eu\Documents\Office" "E:\Documentos\Office"

xcopy /s /y "C:\Users\eu\Documents\PDF" "E:\Documentos\PDF"

xcopy /s /y "C:\Users\eu\Pictures" "E:\Imagens"

xcopy /s /y "C:\Users\eu\Music" "E:\Músicas"

xcopy /s /y "C:\Users\eu\Videos\*.mp4" "E:\Vídeos"

cls

echo Operação Concluída com Êxito!
) else if exist F: (
xcopy /s /y "C:\Aplicações\Criptografia" "F:\Aplicações\Criptografia"

xcopy /s /y "C:\Aplicações\Python Scripts" "F:\Aplicações\Python Scripts"

xcopy /s /y "C:\Projetos\Word" "F:\Projetos\Word"

xcopy /s /y "C:\Users\eu\Documents\Office" "F:\Documentos\Office"

xcopy /s /y "C:\Users\eu\Documents\PDF" "F:\Documentos\PDF"

xcopy /s /y "C:\Users\eu\Pictures" "F:\Imagens"

xcopy /s /y "C:\Users\eu\Music" "F:\Músicas"

xcopy /s /y "C:\Users\eu\Videos\*.mp4" "F:\Vídeos"

cls

echo Operação Concluída com Êxito!
) else (
echo As Unidade E e F não existem! Insira o pendrive para backup e tente novamente!
)

pause>nul