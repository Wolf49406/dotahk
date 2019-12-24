#InstallKeybdHook, #NoEnv, #SingleInstance Force, SendMode Input, SetWorkingDir %A_ScriptDir%
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