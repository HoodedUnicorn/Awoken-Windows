@echo off
:: Section 1: Check if the folder exists, if not, create it
echo Section 1: Checking if the folder 'C:\ProgramData\Awoken' exists...
if not exist "C:\ProgramData\Awoken" (
    mkdir "C:\ProgramData\Awoken"
    echo Folder 'C:\ProgramData\Awoken' created successfully!
) else (
    echo Folder 'C:\ProgramData\Awoken' already exists.
)

:: Pause to wait for user input before proceeding
echo.
echo Press Enter to proceed to the next section...
pause > nul

:: Section 2: Disable sleep settings
echo Section 2: Disabling sleep settings...
powershell -Command "powercfg /change standby-timeout-ac 0; powercfg /change standby-timeout-dc 0; powercfg /change monitor-timeout-ac 0; powercfg /change monitor-timeout-dc 0"

:: Pause to wait for user input before proceeding
echo.
echo Press Enter to proceed to the next section...
pause > nul

:: Section 3: Run PowerShell prevent sleep script with timeout
echo Section 3: Running PowerShell prevent sleep script...
start /B powershell -NoProfile -ExecutionPolicy Bypass -File "C:\ProgramData\Awoken\prevent_sleep.ps1"

:: Wait for the script to finish, timeout after 30 seconds
echo Waiting for PowerShell script to finish...
timeout /t 30

:: Check if PowerShell script is still running
tasklist /FI "IMAGENAME eq powershell.exe" 2>NUL | find /I "powershell.exe" > NUL
if %ERRORLEVEL% EQU 0 (
    echo PowerShell script is still running. Killing process...
    taskkill /F /IM powershell.exe
    echo PowerShell process killed due to timeout.
)

:: Pause to wait for user input before proceeding
echo.
echo Press Enter to proceed to the next section...
pause > nul

:: Section 4: Run Python prevent sleep script (if needed)
echo Section 4: Running Python prevent sleep script...
start python "C:\ProgramData\Awoken\prevent_sleep.py"

:: Check if Python script ran successfully
if %ERRORLEVEL% NEQ 0 (
    echo Error: Python script failed to run. Please check the script for errors.
    pause
    exit /b %ERRORLEVEL%
)

:: Final message
echo.
echo All sections have been executed. Press Enter to exit.
pause > nul
