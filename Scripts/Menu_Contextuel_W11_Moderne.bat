@echo off
title Revenir au menu contextuel moderne - Windows 11

REM Supprime la clé qui force l'ancien menu
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f

REM Redémarre l'Explorateur Windows
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo OK - Menu contextuel moderne restaure.
pause