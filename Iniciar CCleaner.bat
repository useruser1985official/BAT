@echo off

color 74

chcp 1252

title Administrando CCleaner

cls

taskkill /f /t /im CCleaner.exe

net start CCleaner7

exit