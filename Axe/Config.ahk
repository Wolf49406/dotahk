#InstallKeybdHook, #NoEnv, #SingleInstance Force, SendMode Input, SetWorkingDir %A_ScriptDir%, SetBatchLines, -1
IniRead, Key1, Config.ini, Keys, KEY1, % A_Space
IniRead, Key2, Config.ini, Keys, KEY2, % A_Space
IniRead, Key3, Config.ini, Keys, KEY3, % A_Space
IniRead, IsEnabled, Config.ini, CustomItem, Enabled	
IniRead, combokey, Config.ini, Keys, combokey, % A_Space
Gui Add, Text, x9 y49 w120 h23 +0x200, Blink:
Gui Add, Text, x9 y81 w120 h23 +0x200, Blade Mail:
Gui Add, Text, x9 y113 w120 h23 +0x200, Свой Предмет:
Gui Add, Text, x225 y115 w30 h20 +0x200, Вкл?
Gui Add, Text, x9 y150 w120 h20 +0x200, Кнопка комбо:
Gui Add, Hotkey, vA1 x89 y51 w120 h21, % KEY1
Gui Add, Hotkey, vA2 x89 y83 w120 h21, % KEY2
Gui Add, Hotkey, vA3 x91 y115 w120 h21, % KEY3
Gui Add, Hotkey, vA4 x89 y150 w120 h21, % combokey
Gui Add, Checkbox, x215 y116 w10 h20 vOneCB Checked%IsEnabled%, Checkbox
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
 GuiControlGet, %A_Index%
 IniWrite, %OneCB%, Config.ini, CustomItem, Enabled
 IniWrite, %A1%, Config.ini, Keys, Key1
 IniWrite, %A2%, Config.ini, Keys, Key2
 IniWrite, %A3%, Config.ini, Keys, Key3
 IniWrite, %A4%, Config.ini, Keys, combokey
 Run Axe.ahk
ExitApp
return