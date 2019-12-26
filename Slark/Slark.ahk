#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, Move, Config.ini, Keys, movekey
Return

$w::
Send {%Move% Down}
Send {Click, right}
Send {%Move% Up}
Sleep 270
Send w
Return
