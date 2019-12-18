#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

; Ниже настраиваются твои кнопки
BladeMail = {tab}
Blink = {space}
Etc = {MButton} ; Любой твой предмет (разкомментируй ниже)

f:: ; Кнопка для комбо
SendInput %BladeMail%
Sleep 100
SendInput !w  ; Press the Attack
Sleep 300
SendInput %Blink%

;Sleep 150
;SendInput %Etc%  ; (разкомментируй (удали ;) эту и предыдущую строку, если нужно)

Loop 30          ;
{                ;
    SendInput r  ; Спам дуэли под курсор
    Sleep 30     ;
}                ;
return