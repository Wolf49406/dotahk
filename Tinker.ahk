#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

; Ниже настраиваются твои кнопки
Ring = {c} 		; Soul Ring
Sheep = {tab} 		; Dagon
Dagon = {MButton}	; Hex

f:: ; Кнопка бинда
SendInput %Ring%
Sleep 100
SendInput %Sheep%
Sleep 100
SendInput %Dagon%
Sleep 100
SendInput q  ; Laser
Sleep 500
SendInput w  ; Missile
Sleep 200
SendInput r  ; Rearm
return