@echo off
echo.
echo Comandos que voce pode fazer:
echo.

:: Save the current directory
set current_dir=%cd%

:: Change to the directory where the batch file is located
cd /d "%~dp0"

:: List files, excluding "desktop.ini"
for /f "tokens=1" %%a in ('dir /b /a:-d ^| findstr /v /i "desktop.ini README.md LICENSE"') do echo %%~na

:: Return to the original directory
cd /d "%current_dir%"
