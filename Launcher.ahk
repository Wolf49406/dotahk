#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
AxePng=Axe/Axe.png
Gui, Add, Picture,x10 y10 h30, Axe/Axe.png
Gui, Add, Picture,x10 y50 h30, Enigma/Enigma.png
Gui, Add, Picture,x10 y90 h30, Invoker/Invoker.png
Gui, Add, Picture,x10 y130 h30, Kunkka/Kunkka.png
Gui, Add, Picture,x10 y170 h30, LegionCommander/LegionCommander.png
Gui, Add, Picture,x10 y210 h30, Lina/Lina.png
Gui, Add, Picture,x10 y250 h30, Meepo/Meepo.png
Gui, Add, Picture,x10 y290 h30, ShadowFiend/ShadowFiend.png
Gui, Add, Picture,x10 y330 h30, Slark/Slark.png
Gui, Add, Picture,x10 y370 h30, Tinker/Tinker.png
Gui Add, Button, x55 y10 h30 w110 gAxe, Axe
Gui Add, Button, x55 y50 h30 w110 gEnigma, Enigma
Gui Add, Button, x55 y90 h30 w110 gInvoker, Invoker
Gui Add, Button, x55 y130 h30 w110 gKunkka, Kunkka
Gui Add, Button, x55 y170 h30 w110 gLegionCommander, Legion Commander
Gui Add, Button, x55 y210 h30 w110 gLina, Lina
Gui Add, Button, x55 y250 h30 w110 gMeepo, Meepo
Gui Add, Button, x55 y290 h30 w110 gShadowFiend, Shadow Fiend
Gui Add, Button, x55 y330 h30 w110 gSlark, Slark
Gui Add, Button, x55 y370 h30 w110 gTinker, Tinker
Gui Add, Checkbox, x25 y420 vbox Checked, Запустить настройки?
Gui Show, h450 w180 , Launcher
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

Kunkka:
Gui, Submit, NoHide
If box = 1 
{
	Run Kunkka\Config.ahk
}
If box = 0 
{
	Run Kunkka\Kunkka.ahk
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

ShadowFiend:
Gui, Submit, NoHide
If box = 1 
{
	Run ShadowFiend\Config.ahk
}
If box = 0 
{
	Run ShadowFiend\ShadowFiend.ahk
}
return

Slark:
Gui, Submit, NoHide
If box = 1 
{
	Run Slark\Config.ahk
}
If box = 0 
{
	Run Slark\Slark.ahk
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