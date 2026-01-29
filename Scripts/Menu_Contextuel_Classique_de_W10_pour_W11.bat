@echo off
title Activer le menu contextuel classique (Windows 10) - Windows 11

REM Ajoute la clé registre qui force l'ancien menu contextuel
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

REM Redémarre l'Explorateur Windows pour appliquer sans redémarrer le PC
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo OK - Menu contextuel classique active.
echo (Si tu ne vois pas le changement, redemarre le PC.)
pause