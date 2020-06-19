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
Hotkey, %GW%, GW
Hotkey, %CS%, CS
Hotkey, %IW%, IW
Hotkey, %EMP%, EMP
Hotkey, %T%, T
Hotkey, %A%, A
Hotkey, %SS%, SS
Hotkey, %FS%, FS
Hotkey, %CM%, CM
Hotkey, %DB%, DB
Gui -Caption +AlwaysOnTop +ToolWindow +LastFound
Gui Add, Picture, x1 y1 w50 h50, img\Alacrity.png
Gui Add, Picture, x52 y1 w50 h50, img\Chaos_Meteor.png
Gui Add, Picture, x103 y1 w50 h50, img\Cold_Snap.png
Gui Add, Picture, x154 y1 w50 h50, img\Deafening_Blast.png
Gui Add, Picture, x205 y1 w50 h50, img\EMP.png
Gui Add, Picture, x256 y1 w50 h50, img\Forge_Spirit.png
Gui Add, Picture, x307 y1 w50 h50, img\Ghost_Walk.png
Gui Add, Picture, x358 y1 w50 h50, img\Ice_Wall.png
Gui Add, Picture, x409 y1 w50 h50, img\Sun_Strike.png
Gui Add, Picture, x460 y1 w50 h50, img\Tornado.png
Gui Add, Hotkey, x2 y33 w17 h17 vA, % A
Gui Add, Hotkey, x53 y33 w17 h17 vCM, % CM
Gui Add, Hotkey, x104 y33 w17 h17 vCS, % CS
Gui Add, Hotkey, x155 y33 w17 h17 vDB, % DB
Gui Add, Hotkey, x206 y33 w17 h17 vEMP, % EMP
Gui Add, Hotkey, x257 y33 w17 h17 vFS, % FS
Gui Add, Hotkey, x308 y33 w17 h17 vGW, % GW
Gui Add, Hotkey, x359 y33 w17 h17 vIW, % IW
Gui Add, Hotkey, x410 y33 w17 h17 vSS, % SS
Gui Add, Hotkey, x461 y33 w17 h17 vT, % T
Gui, Add, Text, x1 y1 w70 h15 Border GuiMove, Переместить
Gui Add, Button,  x445 y1 w65 h15 gSaveConfig, Сохранить
WinSet, Transparent, 170
Gui Show, xCenter y0 w511 h52
Return

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

uiMove:
PostMessage, 0xA1, 2,,, A 
Return


GW:
Send q
Sleep 100
Send q
Sleep 100
Send w
Sleep 100
Send r
Sleep 100
Send w
Sleep 100
Send w
Sleep 100
Send d
Return

CS:
Send q
Sleep 100
Send q
Sleep 100
Send q
Sleep 100
Send r
Return

IW:
Send q
Sleep 100
Send q
Sleep 100
Send e
Sleep 100
Send r
Return

EMP:
Send w
Sleep 100
Send w
Sleep 100
Send w
Sleep 100
Send r
Return

T:
Send w
Sleep 100
Send w
Sleep 100
Send q
Sleep 100
Send r
Return

A:
Send w
Sleep 100
Send w
Sleep 100
Send e
Sleep 100
Send r
Return

SS:
Send e
Sleep 100
Send e
Sleep 100
Send e
Sleep 100
Send r
Return

FS:
Send e
Sleep 100
Send e
Sleep 100
Send q
Sleep 100
Send r
Return

CM:
Send e
Sleep 100
Send e
Sleep 100
Send w
Sleep 100
Send r
Return

DB:
Send q
Sleep 100
Send w
Sleep 100
Send e
Sleep 100
Send r
Return

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