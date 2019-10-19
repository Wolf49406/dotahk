#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::
SendInput 3  ; Soul Ring
Sleep 200
SendInput {SPACE}  ; Blink
Sleep 400
SendInput {TAB}  ; Hex
Sleep 400
SendInput {MButton}  ; Dagon (колесо мыши)
Sleep 400
SendInput q  ; Laser
Sleep 500
SendInput w  ; Missile
Sleep 200
SendInput r  ; Rearm
return


; Функция блокирует возможность перехватить курьера (спамит кнопку доставки). Включается по Numpad1, выключается по Numpad2
Numpad1::  ; Хоткей для включения
Loop 
{
SendInput {f4}  ; Бинд доставки
If GetKeyState("Numpad2", "P")  ; Хоткей для выключения
Break
}
return