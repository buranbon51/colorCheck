
#SingleInstance FORCE	;終了してから再起動

#KeyHistory 0
;#NoTrayIcon

; 後で設定
;DetectHiddenWindows, Off
DetectHiddenText, Off

SetWorkingDir, %A_ScriptDir%



#Include %A_ScriptDir%\src\guiColorFactory.ahk

#Include %A_ScriptDir%\onlyHere\argUseColorCheckAfter.ahk

cochf_atlp_initGui38()

Menu, Tray, Add, colorCheck(&H), masu_SubMyColorBox
Menu, Tray, Add
Menu, Tray, Add, colorCheckを終了(&X), masu_SubColorBoxExitApp

Menu, Tray, NoStandard
Menu, Tray, Default, colorCheck(&H)
Menu, Tray, Click, 1

Menu, Tray, Tip, colorCheck

DetectHiddenWindows, Off

Gui, 38:Show

return


#Include %A_ScriptDir%\src\colorCheckGuiSubLutin.ahk

#Include %A_ScriptDir%\onlyHere\onlyHereColorCheckGuiSubLutin.ahk

#Include %A_ScriptDir%\src\colorCheckFunc.ahk

#Include %A_ScriptDir%\src\commonSrc\guiCommonFunction.ahk

#Include %A_ScriptDir%\src\commonSrc\functionCommon.ahk
