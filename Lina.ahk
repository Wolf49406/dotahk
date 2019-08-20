#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

~{TAB}::
BlockInput, MouseMove
Sleep 2000
SendInput w
BlockInput, MouseMoveOff
return
