#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

; Ниже настраиваются твои кнопки
Scepter = {tab} ; Eul's Scepter

f::
SendInput %Scepter%
MouseGetPos xpos, ypos  ; Запоминает позицию курсора
Sleep 1600
MouseMove %xpos%, %ypos%  ; Возвращает курсор на позицию
SendInput w  ; Light Strike Array
return