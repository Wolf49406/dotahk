#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

; Ниже настраиваются твои кнопки
bkb = {tab}		; BKB
blink = {space}	; Blink Dagger

f::	; Кнопка бинда
;SendInput %bkb%  ; (раскомментируй (удали ;) эту и следующую строку, если нужно BKB)
;Sleep 100
SendInput %blink%
Sleep 100
SendInput e ; Midnight Pulse
Sleep 100
SendInput r ; Black Hole
return