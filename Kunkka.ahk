#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::  ; Кнопка для комбо
SendInput e  ; X-Marks
BlockInput, MouseMove  ; Блок ввода с мыши
Sleep 100
SendInput q  ; Torrent
BlockInput, MouseMoveOff  ; Отключение блока
Sleep 1500
SendInput e  ; X-Marks
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