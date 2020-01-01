#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Movekey, Config.ini, Keys, Movekey, % A_Space
Gui Add, Text, x10 y12, Идти в направлении:
Gui Add, Hotkey, vA1 x140 y10 w60 h20, % Movekey
Gui Add, Button, gSaveConfig x10 y40, Сохранить и запустить
Gui Show, w215 h75, Config
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
 IniWrite, %A1%, Config.ini, Keys, Movekey
 Run ShadowFiend.ahk
 ExitApp
return