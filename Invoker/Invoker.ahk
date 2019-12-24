#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
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