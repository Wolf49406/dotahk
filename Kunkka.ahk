#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f:: 
SendInput e
MouseGetPos xpos, ypos
MouseMove %xpos%, %ypos%
SendInput q
Sleep 1600
SendInput e
return
