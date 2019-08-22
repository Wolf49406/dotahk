#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::
SendInput {TAB}
MouseGetPos xpos, ypos
Sleep 1600
MouseMove %xpos%, %ypos%
SendInput w
return