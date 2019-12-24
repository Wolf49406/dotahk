#InstallKeybdHook, #NoEnv, #SingleInstance Force, SendMode Input, SetWorkingDir %A_ScriptDir%, SetBatchLines, -1
IniRead, Key1, Config.ini, Keys, KEY1, % A_Space
IniRead, Key2, Config.ini, Keys, KEY2, % A_Space
IniRead, 3, Config.ini, Meepos, 3
IniRead, 4, Config.ini, Meepos, 4
IniRead, 5, Config.ini, Meepos, 5
IniRead, combokey, Config.ini, Keys, combokey, % A_Space
Gui Add, Text, x9 y49 w120 h23 +0x200, Blink:
Gui Add, Text, x9 y81 w120 h23 +0x200, Cледующий юнит:
Gui Add, Text, x135 y110 w50 h20 +0x200, 10 LVL
Gui Add, Text, x135 y130 w30 h20 +0x200, 18 LVL
Gui Add, Text, x135 y150 w60 h20 +0x200, Aghanim
Gui Add, Text, x9 y180 w120 h20 +0x200, Кнопка комбо:
Gui Add, Checkbox, x120 y110 w10 h20 v10lvl Checked%3%, Checkbox
Gui Add, Checkbox, x120 y130 w10 h20 v18lvl Checked%4%, Checkbox
Gui Add, Checkbox, x120 y150 w10 h20 vaghanim Checked%5%, Checkbox
Gui Add, Hotkey, vA1 x120 y51 w120 h21, % KEY1
Gui Add, Hotkey, vA2 x120 y83 w120 h21, % KEY2
Gui Add, Hotkey, vA4 x120 y180 w120 h21, % combokey
Gui Add, Button, gSaveConfig x129 y220 w80 h23, Save Config
Gui Show, w260 h260, Hotkeys Config
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
 IniWrite, %A1%, Config.ini, Keys, Key1
 IniWrite, %A2%, Config.ini, Keys, Key2
 IniWrite, %10lvl%, Config.ini, Meepos, 3
 IniWrite, %18lvl%, Config.ini, Meepos, 4
 IniWrite, %aghanim%, Config.ini, Meepos, 5
 IniWrite, %A4%, Config.ini, Keys, combokey
ExitApp
return