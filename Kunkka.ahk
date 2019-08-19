#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

~e::
MouseGetPos xpos, ypos
Sleep 100
MouseMove %xpos%, %ypos%
SendInput q
Sleep 1500
SendInput e
return
