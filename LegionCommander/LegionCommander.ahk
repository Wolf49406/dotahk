#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
IniRead, IsEnabled, Config.ini, CustomItem, Enabled
IniRead, Blink, Config.ini, Keys, key1
IniRead, BladeMail, Config.ini, Keys, key2
IniRead, Custom, Config.ini, Keys, key3
IniRead, Combo, Config.ini, Keys, combokey
Hotkey, %Combo%, Hotkey
return

Hotkey:
Send {%BladeMail%}
Sleep 100
Send !w
Sleep 300
Send {%Blink%}

if (IsEnabled = 1)
	{
	Sleep 150
	Send {%Custom%}
}

else if (IsEnabled = 0)
	{
}

Loop 30
{
    Send r
    Sleep 30
}
return