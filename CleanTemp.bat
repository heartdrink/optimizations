@echo off
title Temp File Cleaner
color 0A

echo ==========================================
echo         Windows Temp File Cleaner
echo ==========================================
echo.
echo This will delete files from:
echo   - C:\Windows\Temp
echo   - %TEMP%
echo.
pause

:: Clean Windows Temp folder
echo.
echo [1/2] Cleaning C:\Windows\Temp ...
del /s /f /q "%SystemRoot%\Temp\*.*" >nul 2>&1
echo       Done.

:: Clean User Temp folder
echo.
echo [2/2] Cleaning %TEMP% ...
del /s /f /q "%TEMP%\*.*" >nul 2>&1
echo       Done.

echo.
echo ==========================================
echo   Cleanup complete! Temp folders cleared.
echo ==========================================
echo.
pause
