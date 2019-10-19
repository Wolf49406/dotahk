#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::
SendInput {TAB}  ; Eul's Scepter
MouseGetPos xpos, ypos  ; Запоминает позицию курсора
Sleep 1600
MouseMove %xpos%, %ypos%  ; Возвращает курсор на позицию
SendInput w  ; Light Strike Array
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