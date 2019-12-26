#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, IsEnabled, Config.ini, CustomItem, Enabled
IniRead, Blink, Config.ini, Keys, key1
IniRead, BladeMail, Config.ini, Keys, key2
IniRead, Custom, Config.ini, Keys, key3
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
Sleep 50
SendInput %BladeMail%
Sleep 100
SendInput q
return
