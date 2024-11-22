<h1>Are you tired of seeing Windows sleep?</h1>

<h3>Run this script and Windows will not sleep again. </h3>

<br>

<h1> EZ Mode</h1>

<br> Run run_prevent_sleep.bat

<br> Relax

<h1>Manual</h1>

<h3>Step 1</h3>
Open Powershell as Administrator. <br>

<br> Paste the following script:
```
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0
```
<br> This will set Sleep and Time-out to never

<br>Press Enter!

<h3>Step 2</h3>

<br>Run prevent_sleep.py

<br>After that run prevent_sleep.ps1 in Powershell
