tell application "Finder"
	POSIX path of (application file id "org.goldendict" as alias)
end tell

set appPath to result

if application id "org.goldendict" is running then
	tell application id "org.goldendict"
		do shell script (appPath & "/Contents/MacOS/GoldenDict '{popclip text}'")
	end tell
else
	tell application id "org.goldendict"
		activate
	end tell
	do shell script (appPath & "/Contents/MacOS/GoldenDict '{popclip text}'")
end if
