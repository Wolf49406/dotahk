; тут будут всякие рофлановые штуки

; для того, чтобы герой постоянно рофлил в голос и это нельзя было замутать, пропиши в консоль 
; bind 0 "say /laugh"
; Вместо 0 можешь здесь и после "SendInput" назначить свою кнопку. 
; Включается по Numpad1, выключается по Numpad2

#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

Numpad1::
Loop 
{
SendInput 0
Sleep 100
If GetKeyState("Numpad2", "P")
Break
}
return

; по нажатию Numpad3 пишет в общий чат... что-нибудь.

Numpad3::
Send +{enter}
SendRaw Легкая прогулка за +25
Send {enter}
return