#InstallKeybdHook, #NoEnv, #SingleInstance Force, SendMode Input, SetWorkingDir %A_ScriptDir%, SetBatchLines, -1
IniRead, combokey, Config.ini, Keys, combokey, % A_Space
Gui Add, Text, x9 y49 w120 h23 +0x200, Кнопка комбо:
Gui Add, Hotkey, vA4 x89 y150 w120 h21, % combokey
Gui Add, Button, gSaveConfig x129 y185 w80 h23, Save Config
Gui Show, w260 h216, Hotkeys Config
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
 IniWrite, %A4%, Config.ini, Keys, combokey
 Run Kunkka.ahk
ExitApp
return