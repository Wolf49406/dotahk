#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Attr, Config.ini, PTattr, Attr, % A_Space
IniRead, Key1, Config.ini, Keys, KEY1, % A_Space
Gui Add, Hotkey, vA1 x10 y30, % KEY1
Gui Add, Text, x10 y10, Кнопка PT:
Gui Add, Text, x10 y65, Основной аттрибут:
Gui Add, DropDownList, vAttr, Agility|Strength
Gui Add, Button, gSaveConfig x10 y140, Сохранить и запустить
Gui Show, w200 h170, Config
Return
GuiClose:
 ExitApp

SaveConfig:
 Gui, Submit, NoHide
 GuiControlGet, %A_Index%
 IniWrite, %Attr%, Config.ini, PTattr, Attr
 IniWrite, %A1%, Config.ini, Keys, Key1
 Run PowerTreads.ahk
 ExitApp
return