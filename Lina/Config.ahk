#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Key1, Config.ini, Keys, KEY1, % A_Space
IniRead, combokey, Config.ini, Keys, combokey, % A_Space
Gui Add, Text, x10 y12, Eul's Scepter:
Gui Add, Text, x10 y42, Кнопка комбо:
Gui Add, Hotkey, vA1 x90 y10 w49 h20, % KEY1
Gui Add, Hotkey, vA4 x90 y40 w49 h20, % combokey
Gui Add, Button, gSaveConfig x10 y70, Сохранить и запустить
Gui Show, w165 h105, Config
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
 IniWrite, %OneCB%, Config.ini, CustomItem, Enabled
 IniWrite, %A1%, Config.ini, Keys, Key1
 IniWrite, %A4%, Config.ini, Keys, combokey
 Run Lina.ahk
 ExitApp
return