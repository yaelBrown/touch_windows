@echo off
setlocal enabledelayedexpansion

:: Get the current directory
set INSTALL_DIR=%CD%

:: Check if the directory is already in PATH
echo %PATH% | findstr /I /C:"%INSTALL_DIR%" >nul
if %errorlevel% neq 0 (
    echo Adding %INSTALL_DIR% to PATH...
    setx PATH "%PATH%;%INSTALL_DIR%" /M
)

:: Confirm installation
echo Installation complete. You can now use "touch" from anywhere.
pause

