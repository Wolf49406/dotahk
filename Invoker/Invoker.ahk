#Persistent, #InstallKeybdHook, #NoEnv, #SingleInstance Force, SendMode Input, SetWorkingDir %A_ScriptDir%
IniRead, Combo, Config.ini, Keys, combokey
Hotkey, %Combo%, Hotkey
Return

Hotkey:
SendInput q
Sleep 100
SendInput q
Sleep 100
SendInput w
Sleep 100
SendInput r
Sleep 100
SendInput w
Sleep 100
SendInput w
Sleep 100
SendInput d
Return