#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance, force
#Persistent

f:: ; Кнопка для комбо
SendInput {TAB}  ; BladeMail
Sleep 100  ; Задержка для оптимизации
SendInput !w  ; Press the Attack
Sleep 300  ; Анимация каста Press the Attack
SendInput {space}  ; Blink Dagger под курсор

;Sleep 150
;SendInput {MButton}  ; BKB/Satanic/Etc (раскомментируй эту и предыдущую строчку, если нужно)

Loop 30          ;
{                ;
    SendInput r  ; Спам дуэли под курсор
    Sleep 30     ;
}                ;
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