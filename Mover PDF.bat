@echo off

chcp 1252

title Mover PDFs de Programação

color 4F

cls

set /p pdf=Deseja mover os PDFs para a pasta designada? [S/N] 

if /i %pdf% neq S (
exit
)

echo.

cd %userprofile%\Documents\PDF

dir

echo.

set /p pasta=Para qual pasta os PDFs serão movidos? 

cd %userprofile%\Downloads

if exist *.pdf (
move /-y *.pdf %userprofile%\Documents\PDF\%pasta%
) else (
echo Nenhum arquivo PDF encontrado.
)

echo.

set /p delet=Deseja apagar os documentos não transferidos? [S/N] 

if /i %delet% neq S (
exit
) else (
cd %userprofile%/Downloads
)

echo.

if exist *.pdf (
del /f *.pdf
) else (
echo Nenhum documento .pdf encontrado.
)

echo.

echo Operação Realizada com Êxito.

pause>nul

exit