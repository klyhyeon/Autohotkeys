#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



*CapsLock:: sgn := 1
*CapsLock up:: sgn := 0

#if sgn
j::Key("left")
k::Key("down")
i::Key("up")
l::Key("right")
m::Del
n::BS
`;::End
'::Home
8::send {Volume_Down}
9::send {Volume_Up}
0::send {Volume_Mute}
-::PrintScreen


;;;;;;;;;;;;;;;;;;;;글자블럭잡기: shift+방향키조합;;;;;;;;;;;;;;;;;;;;
<+j::
Send, {Shift down}{left}
return

<+k:: 
Send, {Shift down}{down}
return

<+i:: 
Send, {Shift down}{up}
return

<+l:: 
Send, {Shift down}{right}
return
;;;;;;;;;;;;;;;;;;;;글자단어단위이동: ctrl+방향키조합;;;;;;;;;;;;;;;;;;;;
<^j:: 
Send, ^{left}
return

<^l:: 
Send, ^{right}
return
;;;;;;;;;;;;;;;;;;;;글자블럭단어단위: ctrl+shift 방향키조합;;;;;;;;;;;;;;;;;;;
<^<+j:: 
Send, ^+{left}
return

<^<+l::
Send, ^+{right}
return

#if
Key(key)
{
SendInput {blind}{%key%}
}
Key_repeat(pfx, key)
{
SendInput {blind}%pfx%{%key%}
}
 
Ctrl::
GetKeyState, cstate, capslock, Tf
if cstate = U
SetCapslockState, On
if cstate = D
SetCapslockState, Off
return





