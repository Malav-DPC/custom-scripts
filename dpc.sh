#!/bin/bash

# Prompt for the user's name using AppleScript (MDM compliant)
USER_NAME=$(osascript <<EOF
display dialog "Please enter your name:" default answer "" buttons {"OK"} default button "OK"
text returned of result
EOF
)

# Check if the user entered a name
if [ -n "$USER_NAME" ]; then
    echo "User entered: $USER_NAME"
    # Open the URL in Safari using the MDM deployment
    open -a Safari "https://malav-dpc.github.io/Spoon-Knife/"
    exit 0
else
    echo "No name entered. Exiting."
    exit 1
fi
