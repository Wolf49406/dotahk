#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Eul, Config.ini, Keys, key1
IniRead, Combo, Config.ini, Keys, combokey
Hotkey, %Combo%, Hotkey
return

Hotkey:
SendInput %Eul%
MouseGetPos xpos, ypos  ; Запоминает позицию курсора
Sleep 1600
MouseMove %xpos%, %ypos%  ; Возвращает курсор на позицию
SendInput w  ; Light Strike Array
return