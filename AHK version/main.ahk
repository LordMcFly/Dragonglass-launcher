/*
;========================================================
;====================== Dragonglass =====================


Credits:
Sword: inspired by the app MadAppLauncher created by Roberto Concepcion (madproton@gmail.com)
Arrow: rework of compuboy_r's script (AHK forum member)
Dagger: rework of Pulover's script (rodolfoub@gmail.com)


Todo:
-Sword: add possibility to write AHK commands instead of only run (add in config: Tab1A1command=1) and each key checks is command=1, if yes, run custom command, if not, normal run.
-https://www.autohotkey.com/board/topic/92863-function-createtreeview/


*/

#NoEnv
#Singleinstance force
Fileencoding, UTF-8

;======================= Basics =======================
;reads other .ahk files, checks the hotkeys written in config.ini and displays help message

#Include variables.ahk
#Include readsettings.ahk

If (helpshow = 1)
{
	Gosub helpmessage
}
Else
{
}

If (daggerhotkey = "")
{
}
Else
{
	Hotkey, %daggerhotkey%, Showdagger
}

If (arrowhotkey = "")
{
}
Else
{
	Hotkey, %arrowhotkey%, ShowArrow
}

If (arrowlaunchhotkey = "")
{
}
Else
{
	Hotkey, %arrowlaunchhotkey%, ShowArrowLaunch
}

If (swordhotkey = "")
{
}
Else
{
	Hotkey, %swordhotkey%, ShowSword
}
	
;======================= letters for Sword

If (A1letter = "")
{
	IniWrite, Q, config.ini, Keys, A1letter
}
Else
{
}
If (A2letter = "")
{
	IniWrite, W, config.ini, Keys, A2letter
}
Else
{
}
If (A3letter = "")
{
	IniWrite, E, config.ini, Keys, A3letter
}
Else
{
}
If (A4letter = "")
{
	IniWrite, R, config.ini, Keys, A4letter
}
Else
{
}
If (B1letter = "")
{
	IniWrite, A, config.ini, Keys, B1letter
}
Else
{
}
If (B2letter = "")
{
	IniWrite, S, config.ini, Keys, B2letter
}
Else
{
}
If (B3letter = "")
{
	IniWrite, D, config.ini, Keys, B3letter
}
Else
{
}
If (B4letter = "")
{
	IniWrite, F, config.ini, Keys, B4letter
}
Else
{
}
If (C1letter = "")
{
	IniWrite, Z, config.ini, Keys, C1letter
}
Else
{
}
If (C2letter = "")
{
	IniWrite, X, config.ini, Keys, C2letter
}
Else
{
}
If (C3letter = "")
{
	IniWrite, C, config.ini, Keys, C3letter
}
Else
{
}
If (C4letter = "")
{
	IniWrite, V, config.ini, Keys, C4letter
}
Else
{
}

;=======================Tray menu =======================


Menu, MySubmenu, Add, &Dagger, Showdagger
Menu, MySubmenu, Add, &Arrow, Showarrow
Menu, MySubmenu, Add, &Sword, Showsword
Menu, Tray, Add, Show, :MySubmenu
Menu, Tray, Add, &Parameters, Showparameters
Menu, Tray, Add, &Reload, superreload
Menu, Tray, Add , &Exit, superexit
Menu, Tray, NoStandard ; remove standard Menu items

Return

#Include parameters.ahk
#include sword.ahk
#Include dagger.ahk
#Include arrow.ahk

;======================= Universal definitions =======================

helpmessage:
Gui, 8:Font, s15 w700, Calibri
	Gui, 8:Add, Text, w300, `nWelcome to Dragonglass!`n
	Gui, 8:Font, s12 w400, Calibri
	Gui, 8:Add, Text, w300, This program is made of 3 things:`n`n-Windows+F1: Dagger`nDIsplays the content of a folder where you can preview and edit text files.`n`n-Windows+F2: Arrow`nSame as Dagger but in a menu instead of a window.`n`n-Windows+F3: Sword`nInterface where each button can launch files, folders and websites.`n`n`nSmall precision: Arrow and Dagger can do 2 things: launch a file or open an input box and any typed text will then be added at the end of the file when "Save" is pressed (if it's a text file). For this, Dagger has 2 buttons and Arrow can be activated via 2 different hotkeys.
	Gui, 8:Add, Checkbox, vhelpcheck, Do not show this again
	Gui, 8:Add, Button, ghelpbutton Default, &Ok
	Gui, 8:Show,, Welcome
	Return

helpbutton:
	Gui, 8:Submit
	if (helpcheck = 1)
	{
	IniWrite, 0, config.ini, Settings, helpshow
	}
	Else
	{
	}
	Gui, 8:destroy
	Return

Superreload:
	Reload
	Return

Superexit:
	Exitapp
	Return
	
universaledit:
	Gui Destroy
	Gui, 2:Font, s10 w400, %fontfamily%
	Gui, 2:Add, Text,, Add to file: %supertitle%
	Gui, 2:Add, Edit, w%editw% h%edith% vsuperedit
	Gui, 2:Add, Button, w%daggerbuttonw% x%saveeditx% geditsave, &Save
	Gui 2:Show,, Dragonglass edit
	return
	
editsave:
	If appendmode = 1
	{
		Gui, Submit
		FileAppend, %superedit%%separator%, %universalpath%
	}
	If appendmode = 2
	{
		Gui, Submit
		FileAppend, %superedit%`n, %universalpath%
	}
	If appendmode = 3
	{
		Gui, Submit
		FileAppend, %superedit%`n%separator%`n, %universalpath%
	}
	If appendmode = 4
	{
		Gui, Submit
		FileAppend, %superedit%`n`n%separator%`n`n, %universalpath%
	}
	Gui, 2:destroy
	Gui, 1:destroy
	Return

;============================= Key strokes specific to Edit window

#Ifwinactive, Dragonglass edit ahk_class AutoHotkeyGUI

;ctrl+backspace deletes word like in normal text inputs
	^BS::SendInput ^+{Left}{Delete}

;ctrl+s sends alt+s whick clicks the Save button (defined in "editsave")
	^s:: Send !s
	
#ifwinactive

;======================= GUI close and escape =======================
Guiescape:
	Gui, 1:Destroy
	Return
2Guiescape:
	Gui, 2:Destroy
	Return
3Guiescape:
	Gui, 3:Destroy
	Return
4Guiescape:
	Gui, 4:Destroy
	Return
5Guiescape:
	Gui, 5:Destroy
	Return
6Guiescape:
	Gui, 6:Destroy
	Return
7Guiescape:
	Gui, 7:Destroy
	Return
8Guiescape:
	Gui, 8:Destroy
	Return
Guiclose:
	Gui, 1:Destroy
	Return
2Guiclose:
	Gui, 2:Destroy
	Return
3Guiclose:
	Gui, 3:Destroy
	Return
4Guiclose:
	Gui, 4:Destroy
	Return
5Guiclose:
	Gui, 5:Destroy
	Return
6Guiclose:
	Gui, 6:Destroy
	Return
7Guiclose:
	Gui, 7:Destroy
	Return
8Guiclose:
	Gui, 8:Destroy
	Return
	