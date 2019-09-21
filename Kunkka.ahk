#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

~e::
BlockInput, MouseMove     ; Блок ввода с мыши
Sleep 100
SendInput q               ; Torrent
BlockInput, MouseMoveOff  ; Отключение блока
Sleep 1500
SendInput e               ; X-Marks
return
