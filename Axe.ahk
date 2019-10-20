#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f:: ; Кнопка для комбо
;SendInput !c  ; Mjollnir/BKB/Etc (раскомментируй, если нужно) (! перед кнопкой = нажатие через Alt)
SendInput {space}  ; Blink Dagger под курсор
Sleep 50
SendInput {TAB}  ; BladeMail
Sleep 100
SendInput q  ; Berserker's Call
return