@echo off

chcp 1252

title Mover Imagens Heroicas

color 1B

cls

set /p img=Deseja mover as imagens para a pasta designada? [S/N] 

if /i %img% neq S (
exit
)

echo.

cd %userprofile%\Downloads

if exist *.jpg (
move /-y *.jpg "%userprofile%\Pictures\Imagens Heroicas"
) else (
echo Nenhuma imagem .jpg encontrada.
)

if exist *.jpeg (
move /-y *.jpeg "%userprofile%\Pictures\Imagens Heroicas"
) else (
echo Nenhuma imagem .jpeg encontrada.
)

if exist *.png (
move /-y *.png "%userprofile%\Pictures\Imagens Heroicas"
) else (
echo Nenhuma imagem .png encontrada.
)

echo.

set /p gif=GIF's Animados também? [S/N] 

if /i %gif% neq S (
goto format
)

echo.

if exist *.gif (
move /-y *.gif "%userprofile%\Pictures\Imagens Heroicas\Gifs Heroicos"
) else (
echo Nenhuma imagem .gif encontrada.
)

:format

echo.

set /p delet=Deseja apagar as fotos não transferidas? [S/N] 

if /i %delet% neq S (
exit
) else (
cd %userprofile%/Downloads
)

echo.

if exist *.jpg (
del /f *.jpg
) else (
echo Nenhuma imagem .jpg encontrada.
)

if exist *.jpeg (
del /f *.jpeg
) else (
echo Nenhuma imagem .jpeg encontrada.
)

if exist *.png (
del /f *.png
) else (
echo Nenhuma imagem .png encontrada.
)

if exist *.gif (
del /f *.gif
) else (
echo Nenhuma imagem .gif encontrada.
)

if exist *.webp (
del /f *.webp
) else (
echo Nenhuma imagem .webp encontrada.
)

if exist *.avif (
del /f *.avif
) else (
echo Nenhuma imagem .avif encontrada.
)

echo.

echo Operação Realizada com Êxito!

pause>nul

exit