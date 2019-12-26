#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
Gui Add, Button, gAxe, Axe
Gui Add, Button, gEnigma, Enigma
Gui Add, Button, gInvoker, Invoker
Gui Add, Button, gLegionCommander, Legion Commander
Gui Add, Button, gLina, Lina
Gui Add, Button, gMeepo, Meepo
Gui Add, Button, gTinker, Tinker
Gui Add, Button, gShadowFiend, Shadow Fiend
Gui Add, Checkbox, vbox Checked, Запустить настройки?
Gui Show, h260 w180 , Launcher
Return
GuiClose:
ExitApp

Axe:
Gui, Submit, NoHide
If box = 1 
{
	Run Axe\Config.ahk
}
If box = 0 
{
	Run Axe\Axe.ahk
}
return

Enigma:
Gui, Submit, NoHide
If box = 1 
{
	Run Enigma\Config.ahk
}
If box = 0 
{
	Run Enigma\Enigma.ahk
}
return

Invoker:
Gui, Submit, NoHide
If box = 1 
{
	Run Invoker\Config.ahk
}
If box = 0 
{
	Run Invoker\Invoker.ahk
}
return

LegionCommander:
Gui, Submit, NoHide
If box = 1 
{
	Run LegionCommander\Config.ahk
}
If box = 0 
{
	Run LegionCommander\LegionCommander.ahk
}
return

Lina:
Gui, Submit, NoHide
If box = 1 
{
	Run Lina\Config.ahk
}
If box = 0 
{
	Run Lina\Lina.ahk
}
return

Meepo:
Gui, Submit, NoHide
If box = 1 
{
	Run Meepo\Config.ahk
}
If box = 0 
{
	Run Meepo\Meepo.ahk
}
return

Tinker:
Gui, Submit, NoHide
If box = 1 
{
	Run Tinker\Config.ahk
}
If box = 0 
{
	Run Tinker\Tinker.ahk
}
return

ShadowFiend:
Gui, Submit, NoHide
If box = 1 
{
	Run ShadowFiendConfig.ahk
}
If box = 0 
{
	Run ShadowFiend\ShadowFiend.ahk
}
return