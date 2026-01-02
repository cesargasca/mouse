# Mouse Movement - Keep PC Awake

A simple script to keep your computer awake by moving the mouse and pressing shift. Useful for keeping Microsoft Teams status green.

## Requirements

* Python 3.x installed and added to PATH
* pyautogui library (automatically installed by run.bat)

## Usage

### Windows (Easy Way)
Simply double-click `run.bat` - it will check for Python, install dependencies if needed, and start the script.

### Manual Way
```bash
pip install pyautogui
python mouse.py
```

## How it Works

* Moves mouse from top to bottom every 15 seconds
* Presses shift key 3 times
* Keeps running until you press Ctrl+C

## Stopping the Script

Press `Ctrl+C` in the command window to stop
