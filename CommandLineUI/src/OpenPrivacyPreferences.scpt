#OS X: Using AppleScript with Accessibility and Security features in Mavericks - http://support.apple.com/en-us/HT202802

tell application "System Preferences"
	--get a reference to the Security & Privacy preferences pane
    set securityPane to pane id "com.apple.preference.security"
    
	--tell that pane to navigate to its "Accessibility" section under its Privacy tab
    --(the anchor name is arbitrary and does not imply a meaningful hierarchy.)
    tell securityPane to reveal anchor "Privacy_Accessibility"
    
    --set current pane to pane "com.apple.preference.security"
	activate
	
end tell

(*
tell application "System Events"
    tell process "System Preferences"
        tell first window
            set position to {100, 100}
        end tell
    end tell
end tell
*)
(*
set {x, y} to {0, 22} -- position
tell application "System Preferences"
    tell (get bounds of window 1) to set {tRig, tBot} to {(item 3) - ((item 1) - x), (item 4) - ((item 2) - y)}
    set bounds of window 1 to {x, y, tRig, tBot} -- change position of the window without changing it's size
end tell
*)