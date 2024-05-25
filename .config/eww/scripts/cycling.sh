#!/bin/bash

# Define file path
file_path="$HOME/.cache/swww/HDMI-A-1"

# Check if the file exists
if [ -f "$file_path" ]; then
    # Read the content of the file
    content=$(basename $(cat "$file_path"))
else
    echo "File $file_path not found. Running normal.sh."
    script="./scripts/Pink.sh"
    ./scripts/Pink.sh &
    exit 0
fi

# Determine which script to execute based on the content
case $content in
    "Red.jpeg")
        script="./scripts/Pink.sh"
        ;;
    "Pink.png")
        script="./scripts/Cyberpunk.sh"
        ;;
    "Cyberpunk.jpg")
        script="./scripts/Frieren.sh"
        ;;
    "Frieren.png")
        script="./scripts/Red.sh"
        ;;
    *)
        echo "Unknown content in $file_path: $content. Running normal.sh."
        script="./scripts/Pink.sh"
        ;;
esac

# Execute the selected script
echo "Executing script: $script"
./$script &

# Close the script after execution
wait
exit 0

