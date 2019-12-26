#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, IsEnabled, Config.ini, CustomItem, Enabled
IniRead, Blink, Config.ini, Keys, key1
IniRead, Custom, Config.ini, Keys, key2
IniRead, Combo, Config.ini, Keys, combokey
Hotkey, %Combo%, Hotkey
return

Hotkey:
if (IsEnabled = 1)
	{
	SendInput %Custom%
	Sleep 100
}

else if (IsEnabled = 0)
	{
}
SendInput %Blink%
Sleep 100
SendInput e
Sleep 100
SendInput r
return