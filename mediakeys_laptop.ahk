
!,::SendInput {Media_Prev}
return
!.::SendInput {Media_Next}
return
#c::
if WinExist("计算器"){
WinActivate
}
else
{
RUN calc
}
Return

!F1::SendInput {Volume_Mute}
Return
!F2::SendInput {Volume_Down}
Return
!F3::SendInput {Volume_Up}
Return
!F5::SendInput {Media_Play_Pause}
Return
!^SPACE::  Winset, Alwaysontop, , A
#IfWinActive, ahk_class Chrome_WidgetWin_1
!Up::SendInput, ^{PGUP}
!Down::SendInput, ^{PGDN}
!/::SendInput, ^{w}
return
#IfWinActive, ahk_class ApplicationFrameWindow, Microsoft Edge
!Up::SendInput, ^{PGUP}
!Down::SendInput, ^{PGDN}
!/::SendInput, ^{w}
return

#IfWinNotActive,ahk_group WorkIn
;Caps lock to esc if pressed once, ctrl if held
CapsLock::
cDown := A_TickCount
Return
CapsLock up::
; Modify the threshold time (in milliseconds) as necessary
If ((A_TickCount-cDown) < 150)
	if GetKeyState("CapsLock", "T") = 1
        SetCapsLockState, Off
    else
        SetCapsLockState, On
cDown =
Return
#IF cDown
a::Left
w::Up
s::Down
d::Right
q::+^tab
e::^tab
tab::CapsLock
t::^t
!w::Send !{f4}
#If

!w::SendInput, ^{w}
Launch_App2::^+h 
;================= END SCRIPT ===================
