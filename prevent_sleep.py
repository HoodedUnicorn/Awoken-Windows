import time
import pyautogui

while True:
    pyautogui.move(1, 0)  # Move the mouse slightly
    time.sleep(60)        # Wait for 1 minute
    pyautogui.move(-1, 0) # Move it back

