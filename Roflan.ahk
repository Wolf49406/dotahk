; тут будут всякие рофлановые штуки

; для того, чтобы герой постоянно рофлил в голос и это нельзя было замутать, пропиши в консоль 
; bind pgdn "say /laugh"
; Вместо pgdn можешь здесь и после "SendInput" назначить свою кнопку. 
; Включается по Numpad1, выключается по Numpad2

#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Numpad1::  ; Хоткей для включения
Loop 
{
SendInput {PgDn}  ; Бинд
Sleep 100
If GetKeyState("Numpad2", "P")  ; Хоткей для выключения
Break
}
return

; при зажатых Ctrl+Space спамит правую кнопку мыши - полезно, чтобы отжать руну.

^Space::  ; Бинд
  Loop
  { Click, R
    sleep 0
      break
  }
  Return