SetWorkingDir A_ScriptDir

commandLine := DllCall("GetCommandLine", "Str")
runCommandLine := StrReplace(commandLine, A_ScriptName, "attract.exe")

Run runCommandLine,, "Hide UseErrorLevel", PID
if ErrorLevel
	MsgBox "There was an issue launching Attract Mode."
