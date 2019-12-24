#Persistent, #InstallKeybdHook, #NoEnv, #SingleInstance Force, SendMode Input, SetWorkingDir %A_ScriptDir%
IniRead, Combo, Config.ini, Keys, combokey
Hotkey, %Combo%, Hotkey
Return

Hotkey:
SendInput e  ; X-Marks
BlockInput, MouseMove  ; Блок ввода с мыши
Sleep 100
SendInput q  ; Torrent
BlockInput, MouseMoveOff  ; Отключение блока
Sleep 1500
SendInput e  ; X-Marks
return