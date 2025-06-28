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
#f::RUN c://xiaoai
Return
!F6::RUN c://player
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