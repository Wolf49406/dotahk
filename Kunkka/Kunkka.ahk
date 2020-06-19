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
Send e  ; X-Marks
BlockInput, MouseMove  ; Блок ввода с мыши
Sleep 100
Send q  ; Torrent
BlockInput, MouseMoveOff  ; Отключение блока
Sleep 1500
Send e  ; X-Marks
return