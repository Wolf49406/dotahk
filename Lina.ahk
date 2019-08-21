#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

~f::
SendInput {TAB}
BlockInput, MouseMove
Sleep 1600
SendInput w
BlockInput, MouseMoveOff
return
