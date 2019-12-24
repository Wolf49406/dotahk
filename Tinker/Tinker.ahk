#InstallKeybdHook, #NoEnv, #SingleInstance Force, SendMode Input, SetWorkingDir %A_ScriptDir%
IniRead, IsEnabled, Config.ini, CustomItem, Enabled
IniRead, Ring, Config.ini, Keys, key1
IniRead, Hex, Config.ini, Keys, key2
IniRead, Dagon, Config.ini, Keys, key3
IniRead, Combo, Config.ini, Keys, combokey
Hotkey, %Combo%, Hotkey
return

Hotkey:
SendInput %Ring%
Sleep 100
SendInput %Hex%
Sleep 100
SendInput %Dagon%
Sleep 100
SendInput q  ; Laser
Sleep 500
SendInput w  ; Missile
Sleep 200
SendInput r  ; Rearm
return