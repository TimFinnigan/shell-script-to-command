# README: Clickable Shell Script Wrapper

## Overview

This script automates the creation of a **clickable** `.command` file that executes a given shell script. It ensures that the selected shell script is executable and allows users to **run it by double-clicking** from macOS Finder or the Dock.

## Features

- **Creates a `.command` file** that runs the specified shell script.
- **Ensures execution permissions** by setting the shell script as executable.
- **Provides user-friendly access** by suggesting users drag the `.command` file to the Dock.
- **Opens Finder automatically** to facilitate easy access to the generated file.

## How It Works

1. **User Input:** The script prompts for the full path of an existing shell script.
2. **Validation:** It checks if the specified script file exists.
3. **File Generation:** It creates a new `.command` file alongside the original script.
4. **Permission Fix:** It ensures the `.command` file and the original script are executable.
5. **Execution Mechanism:** When clicked, the `.command` file runs the specified script in a new shell session.
6. **Ease of Access:** The script opens Finder and suggests dragging the `.command` file to the Dock for quick execution.

## Usage Instructions

1. Open a terminal and run the script:

   ```bash
   ./your_script_name.sh
   ```

2. Enter the full path of the shell script you want to make clickable, for example:

   ```
   /Users/yourname/Documents/create_repo.sh
   ```

3. The script will:
   - Verify the script exists.
   - Generate a corresponding `.command` file.
   - Set the necessary permissions.
   - Open Finder for easy access.

4. Drag the newly created `.command` file to the **Dock** for quick access.

5. Double-click the `.command` file to execute your script anytime.

## Example

### Input:
```
Enter the full path of your shell script (e.g., /Users/yourname/Documents/create_repo.sh):
/Users/johndoe/Scripts/my_script.sh
```

### Output:
```
✅ Clickable '/Users/johndoe/Scripts/my_script.command' created!
📌 Drag '/Users/johndoe/Scripts/my_script.command' to the Dock for easy access!
```

Finder opens to the script’s location for easy dragging.

## System Requirements

- **macOS**
- **Bash** (`#!/bin/bash` interpreter)
- **Terminal access** to run the initial setup

## Notes

- This script is designed for **macOS** users who want an easy way to run shell scripts by clicking instead of using the Terminal.
- The `.command` file runs in a **new shell session**, ensuring environment variables are properly loaded.
- If the `.command` file doesn't open, check your **System Preferences > Security & Privacy** to allow scripts from unidentified developers.