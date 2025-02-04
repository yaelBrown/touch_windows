@echo off
set INSTALL_DIR=%CD%
setx PATH "%PATH:;%INSTALL_DIR%=%" /M
echo Uninstallation complete.
pause
