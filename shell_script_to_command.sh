#!/bin/bash

# Ensure the script exits on error
set -e

# Get the script path from the user
echo "Enter the full path of your shell script (e.g., /Users/yourname/Documents/create_repo.sh):"
read SCRIPT_PATH

# Verify the file exists
if [[ ! -f "$SCRIPT_PATH" ]]; then
    echo "❌ Error: The file '$SCRIPT_PATH' does not exist."
    exit 1
fi

# Define the .command file location
COMMAND_FILE="${SCRIPT_PATH%.*}.command"

# Create the .command file with fixes
cat > "$COMMAND_FILE" <<EOF
#!/bin/bash
chmod +x "$SCRIPT_PATH"
"$SCRIPT_PATH"
exec \$SHELL
EOF

# Make the .command file executable
chmod +x "$COMMAND_FILE"

# Success message
echo "✅ Clickable '$COMMAND_FILE' created!"
echo "📌 Drag '$COMMAND_FILE' to the Dock for easy access!"

# Open Finder to make it easy to drag the file to Dock
open "$(dirname "$COMMAND_FILE")"

exec $SHELL