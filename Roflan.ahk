; ��� ����� ������ ���������� �����

; ��� ����, ����� ����� ��������� ������ � ����� � ��� ������ ���� ��������, ������� � ������� 
; bind 0 "say /laugh"
; ������ 0 ������ ����� � ����� "SendInput" ��������� ���� ������. 
; ���������� �� Numpad1, ����������� �� Numpad2

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

; �� ������� Numpad3 ����� � ����� ���... ���-������.

Numpad3::
Send +{enter}
SendRaw ������ �������� �� +25
Send {enter}
return