import ctypes
import time
import random
import pyautogui
import threading

# Constants for preventing sleep (from the Windows API)
ES_CONTINUOUS = 0x80000000  # Prevent sleep
ES_SYSTEM_REQUIRED = 0x00000001  # System required to stay awake
ES_AWAYMODE_REQUIRED = 0x00000040  # Away mode required

# Set the execution state to prevent sleep
ctypes.windll.kernel32.SetThreadExecutionState(ES_CONTINUOUS | ES_SYSTEM_REQUIRED)

# Function to simulate activity
def simulate_activity():
    while True:
        # Move the mouse to a random position to simulate activity
        pyautogui.moveTo(random.randint(0, 1920), random.randint(0, 1080), duration=0.1)
        time.sleep(30)  # Sleep for 30 seconds before simulating again

# Function to start the activity simulation in a separate thread
def start_simulation():
    activity_thread = threading.Thread(target=simulate_activity)
    activity_thread.daemon = True  # Daemonize the thread so it exits when the main program exits
    activity_thread.start()

# Start the activity simulation
start_simulation()

# Keep the main program running
while True:
    time.sleep(60)  # Keep the script running, checking periodically
