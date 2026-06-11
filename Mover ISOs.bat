@echo off

chcp 1252

title Mover Imagens ISO

color 71

cls

set /p iso=Deseja mover as imagens ISO para a pasta designada? [S/N] 

if /i %iso% neq S (
exit
)

echo.

cd %userprofile%\Downloads

if exist *.iso (
move /-y *.iso "%userprofile%\Documents\Imagens ISO"
) else (
echo Nenhuma imagem .iso encontrada.
)

echo.

set /p delet=Deseja apagar as Imagens ISO não transferidas? [S/N] 

if /i %delet% neq S (
exit
) else (
cd %userprofile%\Downloads
)

echo.

if exist *.iso (
del /f *.iso
) else (
echo Nenhuma imagem .iso encontrada.
)

echo.

echo Operação Realizada com Êxito.

pause>nul

exit