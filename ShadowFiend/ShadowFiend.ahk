#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Move, Config.ini, Keys, movekey
Return

$q::
Send {%Move% Down}
Send {Click, right}
Send {%Move% Up}
Send q
Sleep 650
Send s
Return

$w::
Send {%Move% Down}
Send {Click, right}
Send {%Move% Up}
Send w
Sleep 650
Send s
Return

$e::
Send {%Move% Down}
Send {Click, right}
Send {%Move% Up}
Send e
Sleep 650
Send s
Return
