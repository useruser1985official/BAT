@echo off

title Limpando XAMPP

color 6F

chcp 1252

cls

set /p opc=Deseja mesmo limpar os dados do XAMPP para atualizá-lo? [S/N] 

if /i %opc% neq S (
exit
)

cd %userprofile%/Downloads

move 127_0_0_1.sql %userprofile%\Desktop

cd C:\Xampp\htdocs

rmdir /s /q dashboard

rmdir /s /q img

rmdir /s /q webalizer

rmdir /s /q xampp

del /f applications.html

del /f bitnami.css

cd ..

move htdocs %userprofile%\Desktop

move php\php.ini %userprofile%\Desktop

move xampp_shell.bat %userprofile%\Desktop

move xampp-control.ini %userprofile%\Desktop

cd /

rmdir /s /q xampp

echo.

echo Operação Concluída com Êxito!

pause>nul