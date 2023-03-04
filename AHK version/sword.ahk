;======================= Sword functions =======================

Showsword:

;================= F keys and parameter button

	Gui, Destroy
	Gui, 4:Font, s%smallfontsize%, %fontfamily%
	Gui, 4:Add, Button, h%swordbutton2h% w%swordbutton2w% gf1button, F1`r%F1label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf2button,  F2`r%F2label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf3button,  F3`r%F3label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf4button,  F4`r%F4label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf5button,  F5`r%F5label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf6button,  F6`r%F6label%
	Gui, 4:Add, Button, x8 y%superyf% h%swordbutton2h% w%swordbutton2w% gf7button, F7`r%F7label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf8button,  F8`r%F8label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf9button,  F9`r%F9label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf10button,  F10`r%F10label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf11button,  F11`r%F11label%
	Gui, 4:Add, Button, xp+%swordbutton2w% h%swordbutton2h% w%swordbutton2w% gf12button,  F12`r%F12label%
	
	Gui, 4:Add, Button, xp+%swordbutton2w% y5 h70 w75 gShowparameters,  &Parameters
	
	Gui, 4:Add, Tab3 ,x10, %tab1name%|%tab2name%
	
;======================= Tab 1

		Gui, 4:Tab , %tab1name%
	
;===========FIRST LINE

			Gui, 4:Font, s%fontsize% cRed
			Gui, 4:Add, Button, x15 y%supery1% h%swordbuttonh% w%swordbuttonw% gTab1A1,   &%A1letter%`r%Tab1A1label%
			Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1A2,       &%A2letter%`r%Tab1A2label%
			Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1A3,       &%A3letter%`r%Tab1A3label%
			Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1A4,       &%A4letter%`r%Tab1A4label%


;===========SECOND LINE
		
		Gui, 4:Add, Button, x25 y%supery2% h%swordbuttonh% w%swordbuttonw% gTab1B1,      &%B1letter%`r%Tab1B1label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1B2,          &%B2letter%`r%Tab1B2label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1B3,          &%B3letter%`r%Tab1B3label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1B4,          &%B4letter%`r%Tab1B4label%


;===========THIRD LINE

	Gui, 4:Add, Button, x45 y%supery3% h%swordbuttonh% w%swordbuttonw% gTab1C1,&%C1letter%`r%Tab1C1label%
	Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1C2,    &%C2letter%`r%Tab1C2label%
	Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1C3,    &%C3letter%`r%Tab1C3label%
	Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab1C4,    &%C4letter%`r%Tab1C4label%


;======================= Tab 2 

	Gui, 4:Font, s%smallfontsize%
	Gui, 4:Tab, %tab2name%

;===========FIRST LINE
		Gui, 4:Font, s%fontsize%
		Gui, 4:Add, Button, x15 y%supery1% h%swordbuttonh% w%swordbuttonw% gTab2A1,   &%A1letter%`r%Tab2A1label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2A2,       &%A2letter%`r%Tab2A2label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2A3,       &%A3letter%`r%Tab2A3label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2A4,       &%A4letter%`r%Tab2A4label%

;===========SECOND LINE
	
		Gui, 4:Add, Button, x25 y%supery2% h%swordbuttonh% w%swordbuttonw% gTab2B1,      &%B1letter%`r%Tab2B1label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2B2,          &%B2letter%`r%Tab2B2label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2B3,          &%B3letter%`r%Tab2B3label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2B4,          &%B4letter%`r%Tab2B4label%

;===========THIRD LINE

		Gui, 4:Add, Button, x45 y%supery3% h%swordbuttonh% w%swordbuttonw% gTab2C1,&%C1letter%`r%Tab2C1label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2C2,    &%C2letter%`r%Tab2C2label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2C3,    &%C3letter%`r%Tab2C3label%
		Gui, 4:Add, Button, x+%spacew% h%swordbuttonh% w%swordbuttonw% gTab2C4,    &%C4letter%`r%Tab2C4label%

	Gui, 4:Show,, Dragonglass - Sword
	Return

;======================= Key actions =======================

universalaction:
	Gui, 4:destroy
	If (universalrun = "")
	{
	Gosub %universalkey%settings
	}
	Else
	{
	If (universalsearch =1)
	{
	Gui, 5:Add, Edit, vsupersearch w150 x50
	Gui, 5:Add, Button, Default gwebsearch w%swordbuttonw% x75, search
	Gui, 5:Show, w250, %universallabel%
	}
	else
	{
	Run %universalrun%
	}
	}
	Return

websearch:
	Gui, submit
	Run %universalrun%%supersearch%
	Gui, 4:destroy
	Gui, 5:destroy
	Return

;======================= Key definitions =======================

;===========Tab 1
;===========FIRST LINE

Tab1A1:
	Iniread, universalrun, config.ini, Keys, Tab1A1run
	Iniread, universallabel, config.ini, Keys, Tab1A1label
	Iniread, universalsearch, config.ini, Keys, Tab1A1search
	universalkey=Tab1A1
	gosub universalaction
	Return

Tab1A2:
	Iniread, universalrun, config.ini, Keys, Tab1A2run
	Iniread, universallabel, config.ini, Keys, Tab1A2label
	Iniread, universalsearch, config.ini, Keys, Tab1A2search
	universalkey=Tab1A2
	gosub universalaction
	Return

Tab1A3:
	Iniread, universalrun, config.ini, Keys, Tab1A3run
	Iniread, universallabel, config.ini, Keys, Tab1A3label
	Iniread, universalsearch, config.ini, Keys, Tab1A3search
	universalkey=Tab1A3
	gosub universalaction
	Return

Tab1A4:
	Iniread, universalrun, config.ini, Keys, Tab1A4run
	Iniread, universallabel, config.ini, Keys, Tab1A4label
	Iniread, universalsearch, config.ini, Keys, Tab1A4search
	universalkey=Tab1A4
	gosub universalaction
	Return

;===========SECOND LINE

Tab1B1:
	Iniread, universalrun, config.ini, Keys, Tab1B1run
	Iniread, universallabel, config.ini, Keys, Tab1B1label
	Iniread, universalsearch, config.ini, Keys, Tab1B1search
	universalkey=Tab1B1
	gosub universalaction
	Return

Tab1B2:
	Iniread, universalrun, config.ini, Keys, Tab1B2run
	Iniread, universallabel, config.ini, Keys, Tab1B2label
	Iniread, universalsearch, config.ini, Keys, Tab1B2search
	universalkey=Tab1B2
	gosub universalaction
	Return

Tab1B3:
	Iniread, universalrun, config.ini, Keys, Tab1B3run
	Iniread, universallabel, config.ini, Keys, Tab1B3label
	Iniread, universalsearch, config.ini, Keys, Tab1B3search
	universalkey=Tab1B3
	gosub universalaction
	Return

Tab1B4:
	Iniread, universalrun, config.ini, Keys, Tab1B4run
	Iniread, universallabel, config.ini, Keys, Tab1B4label
	Iniread, universalsearch, config.ini, Keys, Tab1B4search
	universalkey=Tab1B4
	gosub universalaction
	Return

;===========SECOND LINE

Tab1C1:
	Iniread, universalrun, config.ini, Keys, Tab1C1run
	Iniread, universallabel, config.ini, Keys, Tab1C1label
	Iniread, universalsearch, config.ini, Keys, Tab1C1search
	universalkey=Tab1C1
	gosub universalaction
	Return

Tab1C2:
	Iniread, universalrun, config.ini, Keys, Tab1C2run
	Iniread, universallabel, config.ini, Keys, Tab1C2label
	Iniread, universalsearch, config.ini, Keys, Tab1C2search
	universalkey=Tab1C2
	gosub universalaction
	Return

Tab1C3:
	Iniread, universalrun, config.ini, Keys, Tab1C3run
	Iniread, universallabel, config.ini, Keys, Tab1C3label
	Iniread, universalsearch, config.ini, Keys, Tab1C3search
	universalkey=Tab1C3
	gosub universalaction
	Return

Tab1C4:
	Iniread, universalrun, config.ini, Keys, Tab1C4run
	Iniread, universallabel, config.ini, Keys, Tab1C4label
	Iniread, universalsearch, config.ini, Keys, Tab1C4search
	universalkey=Tab1C4
	gosub universalaction
	Return

;=======================Tab 2
;===========FIRST LINE

Tab2A1:
	Iniread, universalrun, config.ini, Keys, Tab2A1run
	Iniread, universallabel, config.ini, Keys, Tab2A1label
	Iniread, universalsearch, config.ini, Keys, Tab2A1search
	universalkey=Tab2A1
	gosub universalaction
	Return

Tab2A2:
	Iniread, universalrun, config.ini, Keys, Tab2A2run
	Iniread, universallabel, config.ini, Keys, Tab2A2label
	Iniread, universalsearch, config.ini, Keys, Tab2A2search
	universalkey=Tab2A2
	gosub universalaction
	Return

Tab2A3:
	Iniread, universalrun, config.ini, Keys, Tab2A3run
	Iniread, universallabel, config.ini, Keys, Tab2A3label
	Iniread, universalsearch, config.ini, Keys, Tab2A3search
	universalkey=Tab2A3
	gosub universalaction
	Return

Tab2A4:
	Iniread, universalrun, config.ini, Keys, Tab2A4run
	Iniread, universallabel, config.ini, Keys, Tab2A4label
	Iniread, universalsearch, config.ini, Keys, Tab2A4search
	universalkey=Tab2A4
	gosub universalaction
	Return

;===========SECOND LINE

Tab2B1:
	Iniread, universalrun, config.ini, Keys, Tab2B1run
	Iniread, universallabel, config.ini, Keys, Tab2B1label
	Iniread, universalsearch, config.ini, Keys, Tab2B1search
	universalkey=Tab2B1
	gosub universalaction
	Return

Tab2B2:
	Iniread, universalrun, config.ini, Keys, Tab2B2run
	Iniread, universallabel, config.ini, Keys, Tab2B2label
	Iniread, universalsearch, config.ini, Keys, Tab2B2search
	universalkey=Tab2B2
	gosub universalaction
	Return

Tab2B3:
	Iniread, universalrun, config.ini, Keys, Tab2B3run
	Iniread, universallabel, config.ini, Keys, Tab2B3label
	Iniread, universalsearch, config.ini, Keys, Tab2B3search
	universalkey=Tab2B3
	gosub universalaction
	Return

Tab2B4:
	Iniread, universalrun, config.ini, Keys, Tab2B4run
	Iniread, universallabel, config.ini, Keys, Tab2B4label
	Iniread, universalsearch, config.ini, Keys, Tab2B4search
	universalkey=Tab2B4
	gosub universalaction
	Return

;===========THIRD LINE

Tab2C1:
	Iniread, universalrun, config.ini, Keys, Tab2C1run
	Iniread, universallabel, config.ini, Keys, Tab2C1label
	Iniread, universalsearch, config.ini, Keys, Tab2C1search
	universalkey=Tab2C1
	gosub universalaction
	Return

Tab2C2:
	Iniread, universalrun, config.ini, Keys, Tab2C2run
	Iniread, universallabel, config.ini, Keys, Tab2C2label
	Iniread, universalsearch, config.ini, Keys, Tab2C2search
	universalkey=Tab2C2
	gosub universalaction
	Return

Tab2C3:
	Iniread, universalrun, config.ini, Keys, Tab2C3run
	Iniread, universallabel, config.ini, Keys, Tab2C3label
	Iniread, universalsearch, config.ini, Keys, Tab2C3search
	universalkey=Tab2C3
	gosub universalaction
	Return

Tab2C4:
	Iniread, universalrun, config.ini, Keys, Tab2C4run
	Iniread, universallabel, config.ini, Keys, Tab2C4label
	Iniread, universalsearch, config.ini, Keys, Tab2C4search
	universalkey=Tab2C4
	gosub universalaction
	Return

;============================= Key strokes specific to Sword

#IfWinActive, Dragonglass - Sword ahk_class AutoHotkeyGUI

;Switch tab with Space (Space sends ctrl+Tab)
	Space::Send ^{Tab}

;======================= F keys

	F1::
	f1button:
	Iniread, universalrun, config.ini, Keys, F1run
	Iniread, universallabel, config.ini, Keys, F1label
	Iniread, universalsearch, config.ini, Keys, F1search
	universalkey=F1
	gosub universalaction
	Return
	
	F2::
	f2button:
	Iniread, universalrun, config.ini, Keys, F2run
	Iniread, universallabel, config.ini, Keys, F2label
	Iniread, universalsearch, config.ini, Keys, F2search
	universalkey=F2
	gosub universalaction
	Return
	
	F3::
	f3button:
	Iniread, universalrun, config.ini, Keys, F3run
	Iniread, universallabel, config.ini, Keys, F3label
	Iniread, universalsearch, config.ini, Keys, F3search
	universalkey=F3
	gosub universalaction
	Return
	
	F4::
	f4button:
	Iniread, universalrun, config.ini, Keys, F4run
	Iniread, universallabel, config.ini, Keys, F4label
	Iniread, universalsearch, config.ini, Keys, F4search
	universalkey=F4
	gosub universalaction
	Return
	
	F5::
	f5button:
	Iniread, universalrun, config.ini, Keys, F5run
	Iniread, universallabel, config.ini, Keys, F5label
	Iniread, universalsearch, config.ini, Keys, F5search
	universalkey=F5
	gosub universalaction
	Return
	
	F6::
	f6button:
	Iniread, universalrun, config.ini, Keys, F6run
	Iniread, universallabel, config.ini, Keys, F6label
	Iniread, universalsearch, config.ini, Keys, F6search
	universalkey=F6
	gosub universalaction
	Return
	
	F7::
	f7button:
	Iniread, universalrun, config.ini, Keys, F7run
	Iniread, universallabel, config.ini, Keys, F7label
	Iniread, universalsearch, config.ini, Keys, F7search
	universalkey=F7
	gosub universalaction
	Return
	
	F8::
	f8button:
	Iniread, universalrun, config.ini, Keys, F8run
	Iniread, universallabel, config.ini, Keys, F8label
	Iniread, universalsearch, config.ini, Keys, F8search
	universalkey=F8
	gosub universalaction
	Return
	
	F9::
	f9button:
	Iniread, universalrun, config.ini, Keys, F9run
	Iniread, universallabel, config.ini, Keys, F9label
	Iniread, universalsearch, config.ini, Keys, F9search
	universalkey=F9
	gosub universalaction
	Return
	
	F10::
	f10button:
	Iniread, universalrun, config.ini, Keys, F10run
	Iniread, universallabel, config.ini, Keys, F10label
	Iniread, universalsearch, config.ini, Keys, F10search
	universalkey=F10
	gosub universalaction
	Return
	
	F11::
	f11button:
	Iniread, universalrun, config.ini, Keys, F11run
	Iniread, universallabel, config.ini, Keys, F11label
	Iniread, universalsearch, config.ini, Keys, F11search
	universalkey=F11
	gosub universalaction
	Return
	
	F12::
	f12button:
	Iniread, universalrun, config.ini, Keys, F12run
	Iniread, universallabel, config.ini, Keys, F12label
	Iniread, universalsearch, config.ini, Keys, F12search
	universalkey=F12
	gosub universalaction
	Return

#Ifwinactive
