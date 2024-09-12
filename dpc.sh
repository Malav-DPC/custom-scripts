#!/bin/bash

# Ask the user to input their name using an AppleScript dialog
USER_NAME=$(osascript <<EOF
tell application "System Events"
    set nameDialog to display dialog "Please enter your name:" default answer ""
    set userName to text returned of nameDialog
end tell
return userName
EOF
)

# If the user provided a name, open Safari with the specified URL
if [ ! -z "$USER_NAME" ]; then
    echo "Hello, $USER_NAME!"
    open -a "Safari" "https://malav-dpc.github.io/Spoon-Knife/"
else
    echo "No name entered. Exiting."
    exit 1
fi
