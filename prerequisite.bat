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

:: Section 3: Run Python prevent sleep script
echo Section 3: Running Python prevent sleep script...
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
