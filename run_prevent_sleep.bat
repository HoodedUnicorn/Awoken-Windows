@echo off
:: Disable sleep settings
powershell -Command "powercfg /change standby-timeout-ac 0; powercfg /change standby-timeout-dc 0; powercfg /change monitor-timeout-ac 0; powercfg /change monitor-timeout-dc 0"

:: Run PowerShell prevent sleep script
powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Scripts\prevent_sleep.ps1"

:: Run Python prevent sleep script (if needed)
start python "C:\Scripts\prevent_sleep.py"
