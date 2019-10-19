#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::
SendInput {TAB}  ; Eul's Scepter
SendInput m  ; Идет в направлении противника
Sleep 830
SendInput r  ; Requiem of Souls
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