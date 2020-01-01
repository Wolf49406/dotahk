#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Help, Config.ini, Keys, Help, % A_Space
IniRead, CS, Config.ini, Keys, CS, % A_Space
IniRead, GW, Config.ini, Keys, GW, % A_Space
IniRead, IW, Config.ini, Keys, IW, % A_Space
IniRead, EMP, Config.ini, Keys, EMP, % A_Space
IniRead, T, Config.ini, Keys, T, % A_Space
IniRead, A, Config.ini, Keys, A, % A_Space
IniRead, SS, Config.ini, Keys, SS, % A_Space
IniRead, FS, Config.ini, Keys, FS, % A_Space
IniRead, CM, Config.ini, Keys, CM, % A_Space
IniRead, DB, Config.ini, Keys, DB, % A_Space
Gui Add, Text,, Cold Snap:
Gui Add, Hotkey, vCS, % CS
Gui Add, Text,, Ghost Walk:
Gui Add, Hotkey, vGW, % GW
Gui Add, Text,, Ice Wall:
Gui Add, Hotkey, vIW, % IW
Gui Add, Text,, EMP:
Gui Add, Hotkey, vEMP, % EMP
Gui Add, Text,, Tornado:
Gui Add, Hotkey, vT, % T
Gui Add, Text,, Alacrity:
Gui Add, Hotkey, vA, % A
Gui Add, Text,, Sun Strike:
Gui Add, Hotkey, vSS, % SS
Gui Add, Text,, Forge Spirit:
Gui Add, Hotkey, vFS, % FS
Gui Add, Text,, Chaos Meteor:
Gui Add, Hotkey, vCM, % CM
Gui Add, Text,, Deafening Blast:
Gui Add, Hotkey, vDB, % DB
Gui Add, Text,, Показать подсказку:
Gui Add, Hotkey, vHelp, % Help
Gui Add, Button, w121 h30 gSaveConfig, Сохранить и запустить
Gui Show, w165 h550, Config
Return
GuiClose:
 ExitApp

#MenuMaskKey vk07
#If ctrl := HotkeyCtrlHasFocus()
 *AppsKey::
 *BackSpace::
 *Delete::
 *Enter::
 *Escape::
 *Pause::
 *PrintScreen::
 *Space::
 *Tab::
  modifier := ""
  If GetKeyState("Shift","P")
   modifier .= "+"
  If GetKeyState("Ctrl","P")
   modifier .= "^"
  If GetKeyState("Alt","P")
   modifier .= "!"
  Gui, Submit, NoHide
   GuiControl,,%ctrl%, % modifier SubStr(A_ThisHotkey,2)
 return
#If
HotkeyCtrlHasFocus() {
 GuiControlGet, ctrl, Focus
 If InStr(ctrl,"hotkey") {
  GuiControlGet, ctrl, FocusV
  Return, ctrl
 }
}

SaveConfig:
 Gui, Submit, NoHide
 GuiControlGet, %A_Index%
 IniWrite, %CS%, Config.ini, Keys, CS
 IniWrite, %GW%, Config.ini, Keys, GW
 IniWrite, %IW%, Config.ini, Keys, IW
 IniWrite, %EMP%, Config.ini, Keys, EMP
 IniWrite, %T%, Config.ini, Keys, T
 IniWrite, %A%, Config.ini, Keys, A
 IniWrite, %SS%, Config.ini, Keys, SS
 IniWrite, %FS%, Config.ini, Keys, FS
 IniWrite, %CM%, Config.ini, Keys, CM
 IniWrite, %DB%, Config.ini, Keys, DB
 IniWrite, %Help%, Config.ini, Keys, Help
 Run Invoker.ahk
 ExitApp
return