#SingleInstance Force
#InstallKeybdHook
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
IniRead, GW, Config.ini, Keys, GW
IniRead, CS, Config.ini, Keys, CS
IniRead, IW, Config.ini, Keys, IW
IniRead, EMP, Config.ini, Keys, EMP
IniRead, T, Config.ini, Keys, T
IniRead, A, Config.ini, Keys, A
IniRead, SS, Config.ini, Keys, SS
IniRead, FS, Config.ini, Keys, FS
IniRead, CM, Config.ini, Keys, CM
IniRead, DB, Config.ini, Keys, DB
IniRead, Help, Config.ini, Keys, Help
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
Hotkey, %Help%, Help
Return

Help:
MsgBox ,, Help,
(LTrim
Cold Snap: %CS%
Ghost Walk: %GW%
Ice Wall: %IW%
EMP: %EMP%
Tornado: %T%
Alacrity: %A%
Sun Strike: %SS%
Forge Spirit: %FS%
Chaos Meteor: %CM%
Deafening Blast: %DB%
)
return

GW:
SendInput q
Sleep 100
SendInput q
Sleep 100
SendInput w
Sleep 100
SendInput r
Sleep 100
SendInput w
Sleep 100
SendInput w
Sleep 100
SendInput d
Return

CS:
SendInput q
Sleep 100
SendInput q
Sleep 100
SendInput q
Sleep 100
SendInput r
Return

IW:
SendInput q
Sleep 100
SendInput q
Sleep 100
SendInput e
Sleep 100
SendInput r
Return

EMP:
SendInput w
Sleep 100
SendInput w
Sleep 100
SendInput w
Sleep 100
SendInput r
Return

T:
SendInput w
Sleep 100
SendInput w
Sleep 100
SendInput q
Sleep 100
SendInput r
Return

A:
SendInput w
Sleep 100
SendInput w
Sleep 100
SendInput e
Sleep 100
SendInput r
Return

SS:
SendInput e
Sleep 100
SendInput e
Sleep 100
SendInput e
Sleep 100
SendInput r
Return

FS:
SendInput e
Sleep 100
SendInput e
Sleep 100
SendInput q
Sleep 100
SendInput r
Return

CM:
SendInput e
Sleep 100
SendInput e
Sleep 100
SendInput w
Sleep 100
SendInput r
Return

DB:
SendInput q
Sleep 100
SendInput w
Sleep 100
SendInput e
Sleep 100
SendInput r
Return