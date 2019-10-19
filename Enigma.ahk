#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f::	; Кнопка бинда
;SendInput {TAB}  ; BKB (раскомментируй эту и следующую строчку, если нужно)
;Sleep 100
SendInput {SPACE}  ; Blink
Sleep 100
SendInput e  ; Midnight Pulse
Sleep 100
SendInput r  ; Black Hole
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