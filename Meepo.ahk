#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Switch = f ; Кнопка "следующий юнит" из настроек доты.
Blink = {space} ; Кнопка для Blink Dagger'a

d:: ; Кнопка для комбо

; Два Мипошки
SendInput %Switch%
Sleep 100
SendInput w  ; Poof
Sleep 100

; Три Мипошки
SendInput %Switch%
Sleep 100
SendInput w  ; Poof
Sleep 100

; Четыре Мипошки - разкомментируй (удали ;) на 18 LVL
;SendInput %Switch%
;Sleep 100
;SendInput w  ; Poof
;Sleep 100

; Аганимный Мипошка
;SendInput %Switch%
;Sleep 100
;SendInput w  ; Poof
;Sleep 100

SendInput %Switch%
Sleep 100
SendInput %Blink%
return
