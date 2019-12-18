#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

; Ниже настраиваются твои кнопки
scepter = {space}	; Eul's Scepter

f:: ; Кнопка бинда 
SendInput %scepter%
MouseGetPos xpos, ypos  ; Запоминает позицию курсора
Sleep 1400
MouseMove %xpos%, %ypos%  ; Возвращает курсор на позицию
SendInput w ; Ice Path
return