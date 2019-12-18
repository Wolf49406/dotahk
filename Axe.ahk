#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

; Ниже настраиваются твои кнопки

item = c  ; (BKB/Mjolnir/Еще что-то)
blink = {space}
blademail = {tab}

f:: ; Кнопка для комбо
;SendInput !%item%  ; (раскомментируй (удали ;) эту и следующую строку, если нужно)
;Sleep 100
SendInput %blink%
Sleep 50
SendInput %blademail%
Sleep 100
SendInput q ; Berserker's Call
return