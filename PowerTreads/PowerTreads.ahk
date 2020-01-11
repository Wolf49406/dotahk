#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, PT, Config.ini, PTattr, Attr
IniRead, PTk, Config.ini, Keys, key1
Return

$q::
if (PT = "Agility")
	{
Send %PTk%
Sleep 50
Send %PTk%
Sleep 50
Send q
Sleep 1000
Send %PTk%
}
else if (PT = "Strength")
	{
Send %PTk%
Sleep 50
Send q
Sleep 1000
Send %PTk%
Sleep 50
Send %PTk%
}
Return

$w::
if (PT = "Agility")
	{
Send %PTk%
Sleep 50
Send %PTk%
Sleep 50
Send w
Sleep 1000
Send %PTk%
}
else if (PT = "Strength")
	{
Send %PTk%
Sleep 50
Send w
Sleep 1000
Send %PTk%
Sleep 50
Send %PTk%
}
Return

$e::
if (PT = "Agility")
	{
Send %PTk%
Sleep 50
Send %PTk%
Sleep 50
Send e
Sleep 1000
Send %PTk%
}
else if (PT = "Strength")
	{
Send %PTk%
Sleep 50
Send e
Sleep 1000
Send %PTk%
Sleep 50
Send %PTk%
}
Return

$r::
if (PT = "Agility")
	{
Send %PTk%
Sleep 50
Send %PTk%
Sleep 50
Send r
Sleep 1000
Send %PTk%
}
else if (PT = "Strength")
	{
Send %PTk%
Sleep 50
Send r
Sleep 1000
Send %PTk%
Sleep 50
Send %PTk%
}
Return