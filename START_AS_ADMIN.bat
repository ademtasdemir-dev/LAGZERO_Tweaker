@echo off
REM LAG|ZERO Tweaker - Start mit Administratorrechten (Python-Version)
REM Prueft erst, ob Python vorhanden ist, und startet dann das Skript elevated.

where pythonw >nul 2>nul
if errorlevel 1 (
    echo FEHLER: Python wurde nicht gefunden.
    echo Bitte Python 3.8+ von https://www.python.org installieren
    echo und dabei "Add Python to PATH" aktivieren.
    pause
    exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process pythonw -ArgumentList '\"%~dp0lagzero_tweaker.py\"' -Verb RunAs"
