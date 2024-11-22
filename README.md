# Awoken - Keep Your Windows System Awake

**Awoken** is a simple solution to prevent your Windows computer from entering sleep mode by keeping it awake and simulating user activity. The program consists of two scripts: a batch script to set up the environment and a Python script that prevents sleep while simulating activity.

---

## Prerequisites

Before running the scripts, ensure your system meets the following requirements:

### 1. **Python 3.x**
Make sure that **Python 3.x** is installed on your system. You can download it from the official website:

- [Download Python](https://www.python.org/downloads/)

### 2. **Python Libraries**
The Python script uses the `pyautogui` library to simulate mouse movements. To install it, run the following command:

```bash
pip install pyautogui
```
### 3. Administrator Permissions
You may need administrator privileges to execute certain commands, especially when modifying system settings like power configurations. Ensure you run the scripts with administrative rights if needed.

### Project Structure
This project contains two main files:

`prerequisite.bat`: A batch script to set up the necessary environment, disable sleep settings, and run the Python script. <br>
`awoken.exe`: An executable prevents the system from going to sleep and simulates activity.

### Steps to Set Up and Run
#### Step 1: Prepare the Environment
Create the Folder for Scripts
First, create a folder where the scripts will reside. You can use the batch script for this.

The folder will be created at C:\ProgramData\Awoken. This folder is where both scripts will be stored.
Download or Copy the Scripts
Copy both `prerequisite.bat` and `awoken.exe` into the folder C:\ProgramData\Awoken.

Install the Python Libraries
Open a terminal (Command Prompt or PowerShell) and install the necessary Python library (pyautogui) by running:

```bash
pip install pyautogui
```
#### Step 2: Running the Batch Script
1. Run the Batch File
Right-click on the prerequisite.bat file and select Run as Administrator. This will initiate the following steps:

* It will check if the folder C:\ProgramData\Awoken exists and create it if necessary.
* It will disable the sleep and screen timeout settings.
* It will start the Python script (awoken.exe) that will prevent the system from going to sleep and simulate user activity.
<br> Follow the Prompts
<br>
The batch script will prompt you to press Enter after each section. Press Enter to proceed to the next section: <br>

* Checking/creating the folder.
* Disabling sleep settings.
* Running the Python script.

#### Step 3: Python Script Runs in the Background

After the batch script has run, the Python script will continue running in the background: <br>
* Prevent Sleep: The Python script uses the Windows API to prevent the system from entering sleep mode.
* Simulate Activity: Every 30 seconds, the Python script simulates mouse movement to keep the system active and prevent idle timeouts.

#### Step 4: Stopping the Script
* To stop the Python script, simply close the terminal or terminate the running process from the Task Manager.
