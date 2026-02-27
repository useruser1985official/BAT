@echo off

cd %programfiles(x86)%

rmdir /s /q KingRoot

cd %appdata%

rmdir /s /q KingRoot

rmdir /s /q Tencent

reg delete HKCU\SOFTWARE\Tencent /f

pause