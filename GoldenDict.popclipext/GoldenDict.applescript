set appName to "GoldenDict"

if application appName is running then
	tell application id (id of application appName)
		do shell script "/Applications/GoldenDict.app/Contents/MacOS/GoldenDict '{popclip text}'"
	end tell
	return "Running"
else
	tell application "GoldenDict"
		activate
	end tell
	do shell script "/Applications/GoldenDict.app/Contents/MacOS/GoldenDict '{popclip text}'"
	return "Not running"
end if