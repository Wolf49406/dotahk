#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::
SetKeyDelay, 0
SendInput !w
Sleep 100
SendInput {TAB}
Sleep 100
SendInput {SPACE}
Sleep 300
return
