#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;By Spxctator

Command = `%f ; change according to prefix of bot
Cooldown := 3250 ; change according to your cooldown

SleepMin := Cooldown - 200
SleepMax := Cooldown + 1000
CoordMode, Pixel, Window

!o::
Loop
{
PixelGetColor, DetectMath, 700, 850
PixelSearch, Px, Py, 900, 700, 1200, 900, 0xF4A420, 15, Fast
Random, RandomSleep, SleepMin, SleepMax
    if (DetectMath = 0x36312F)
    {
        SoundBeep
        Pause
    }
    if (ErrorLevel = 0)
    {
        SoundBeep
        Pause
    }
    else
    {
        Send, %Command%{enter}
        Sleep, %RandomSleep%
    }
}
return

!p::
Pause
return

Esc::
ExitApp
return
