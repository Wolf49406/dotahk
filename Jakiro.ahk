#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::
SendInput {TAB}  ; Eul's Scepter
MouseGetPos xpos, ypos  ; Запоминает позицию курсора
Sleep 1400
MouseMove %xpos%, %ypos%  ; Возвращает курсор на позицию
SendInput w  ; Ice Path
return