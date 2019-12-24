#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
Gui Add, DropDownList, x24 y20 w129 vList1 gOnSelect, Выбери героя||Axe|Enigma|Invoker|Kunkka|Legion Commander|Lina|Meepo|Tinker
Gui Show, w177 h60, Launcher
Return

OnSelect:
Gui, Submit, nohide
if (List1 = "Axe")
	Run %A_ScriptDir%/Axe/Config.ahk
else if (List1 = "Enigma")
	Run %A_ScriptDir%/Enigma/Config.ahk
else if (List1 = "Invoker")
	Run %A_ScriptDir%/Invoker/Config.ahk
else if (List1 = "Kunkka")
	Run %A_ScriptDir%/Kunkka/Config.ahk
else if (List1 = "Legion Commander")
	Run %A_ScriptDir%/Legion Commander/Config.ahk
else if (List1 = "Lina")
	Run %A_ScriptDir%/Lina/Config.ahk
else if (List1 = "Meepo")
	Run %A_ScriptDir%/Meepo/Config.ahk
else if (List1 = "Tinker")
	Run %A_ScriptDir%/Tinker/Config.ahk
GuiClose:
ExitApp