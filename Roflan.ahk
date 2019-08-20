; тут будут всякие рофлановые штуки

; для того, чтобы герой постоянно рофлил в голос и это нельзя было замутать, пропиши в консоль 
; bind 0 "say /laugh"
; Вместо 0 можешь здесь и после "SendInput" назначить свою кнопку. 
; Включается по кнопке l, выключается по p

#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

l::
Loop 
{
SendInput 0
Sleep 100
If GetKeyState("p", "P")
Break
}
return

; по нажатию 9 пишет в общий чат... что-нибудь.

9::
Send +{enter}
SendRaw Легкая прогулка за +25
Send {enter}
return
