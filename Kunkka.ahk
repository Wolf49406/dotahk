#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

~e::
BlockInput, MouseMove
Sleep 100
SendInput q
BlockInput, MouseMoveOff
Sleep 1500
SendInput e
return
