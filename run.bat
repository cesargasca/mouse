@echo off
REM Mouse Movement Script - Keep Computer Awake
REM This script runs the Python mouse automation program

echo ====================================
echo   Mouse Movement - Keep PC Awake
echo ====================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python from https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation
    pause
    exit /b 1
)

echo Python is installed
echo.

REM Check if pyautogui is installed
python -c "import pyautogui" >nul 2>&1
if %errorlevel% neq 0 (
    echo pyautogui is not installed. Installing now...
    pip install pyautogui
    if %errorlevel% neq 0 (
        echo ERROR: Failed to install pyautogui
        pause
        exit /b 1
    )
    echo pyautogui installed successfully!
    echo.
)

echo Starting mouse movement script...
echo Start time: %date% %time%
echo Press Ctrl+C to stop the script
echo.

REM Run the Python script
python mouse.py

echo.
echo ====================================
echo Stop time: %date% %time%
echo ====================================
pause
