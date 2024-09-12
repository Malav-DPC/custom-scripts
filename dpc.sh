osascript <<EOF
tell application "System Events"
    activate
    set userResponse to display dialog "Please enter your name:" default answer "" buttons {"OK"} default button "OK"
    set userName to text returned of userResponse
end tell

if userName is not "" then
    tell application "Safari"
        open location "https://malav-dpc.github.io/Spoon-Knife/"
        activate
    end tell
else
    display dialog "No name entered. Exiting."
end if
EOF
