#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Key1, Config.ini, Keys, KEY1, % A_Space
IniRead, Key2, Config.ini, Keys, KEY2, % A_Space
IniRead, Key3, Config.ini, Keys, KEY3, % A_Space
IniRead, IsEnabled, Config.ini, CustomItem, Enabled	
IniRead, combokey, Config.ini, Keys, combokey, % A_Space
Gui Add, Text, x10 y13, Blink:
Gui Add, Text, x10 y43, Blade Mail:
Gui Add, Text, x10 y73, Свой Предмет:
Gui Add, Text, x163 y73, Вкл?
Gui Add, Text, x10 y103, Кнопка комбо:
Gui Add, Hotkey, vA1 x90 y10 w47 h20, % KEY1
Gui Add, Hotkey, vA2 x90 y40 w47 h20, % KEY2
Gui Add, Hotkey, vA3 x90 y70 w47 h20, % KEY3
Gui Add, Hotkey, vA4 x90 y100 w47 h20, % combokey
Gui Add, Checkbox, x145 y71 w18 h18 vOneCB Checked%IsEnabled%
Gui Add, Button, gSaveConfig x10 y140, Сохранить и запустить
Gui Show, w200 h175, Config
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
 IniWrite, %A2%, Config.ini, Keys, Key2
 IniWrite, %A3%, Config.ini, Keys, Key3
 IniWrite, %A4%, Config.ini, Keys, combokey
 Run Axe.ahk
return