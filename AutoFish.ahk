#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!o::
CoordMode, Pixel, Window
Loop
{
PixelGetColor, DetectMath, 700, 850
PixelSearch, VarX, VarY, 900, 700, 1200, 900, 0xF4A420, 15, Fast
    if (DetectMath = 0x36312F)
    {
        SoundBeep ; delete line to remove sound
        Pause
    }
    if (ErrorLevel = 0)
    {
        SoundBeep ; delete line to remove sound
        Pause
    }
    else
    {
        Send, `%f{enter} ; change according to prefix of bot
        Sleep 3100 ; change according to cooldown in ms (+100ms)
    }
}
return

!p::
Pause
return

Esc::
ExitApp
return