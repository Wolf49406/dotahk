#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Key1, Config.ini, Keys, KEY1, % A_Space
IniRead, Key2, Config.ini, Keys, KEY2, % A_Space
IniRead, 3, Config.ini, Meepos, 3
IniRead, 4, Config.ini, Meepos, 4
IniRead, 5, Config.ini, Meepos, 5
IniRead, combokey, Config.ini, Keys, combokey, % A_Space
Gui Add, Text, x10 y12, Blink:
Gui Add, Text, x10 y42, Cледующий юнит:
Gui Add, Text, x135 y72, 10 LVL
Gui Add, Text, x135 y92, 18 LVL
Gui Add, Text, x135 y112, Aghanim
Gui Add, Text, x10 y142, Кнопка комбо:
Gui Add, Checkbox, x120 y70 w10 h20 v10lvl Checked%3%
Gui Add, Checkbox, x120 y90 w10 h20 v18lvl Checked%4%
Gui Add, Checkbox, x120 y110 w10 h20 vaghanim Checked%5%
Gui Add, Hotkey, vA1 x120 y10 w80 h20, % KEY1
Gui Add, Hotkey, vA2 x120 y40 w80 h20, % KEY2
Gui Add, Hotkey, vA4 x120 y140 w80 h20, % combokey
Gui Add, Button, gSaveConfig x10 y175, Сохранить и запустить
Gui Show, w215 h210, Config
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
 Run Meepo.ahk
return