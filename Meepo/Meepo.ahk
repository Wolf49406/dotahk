#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, IsEnabled3, Config.ini, Meepos, 3
IniRead, IsEnabled4, Config.ini, Meepos, 4
IniRead, IsEnabled5, Config.ini, Meepos, 5
IniRead, Blink, Config.ini, Keys, key1
IniRead, Next, Config.ini, Keys, key2
IniRead, Combo, Config.ini, Keys, combokey
Hotkey, %Combo%, Hotkey
return

Hotkey:
; Два Мипошки
Send {%Next%}
Sleep 100
Send w  ; Poof
Sleep 100

if (IsEnabled3 = 1)		; Три Мипошки
	{
	Send {%Next%}
	Sleep 100
	Send w  ; Poof
	Sleep 100
}
else if (IsEnabled3 = 0)
	{
}

if (IsEnabled4 = 1)		; Четыре Мипошки
	{
	Send {%Next%}
	Sleep 100
	Send w  ; Poof
	Sleep 100
}
else if (IsEnabled4 = 0)
	{
}

if (IsEnabled5 = 1)		; Аганимный Мипошка
	{
	Send {%Next%}
	Sleep 100
	Send w  ; Poof
	Sleep 100
}
else if (IsEnabled5 = 0)
	{
}

Send {%Next%}
Sleep 100
Send {%Blink%}
return