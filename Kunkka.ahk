#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

~e::
BlockInput, MouseMove
SendInput q
BlockInput, MouseMoveOff
Sleep 1600
SendInput e
return
