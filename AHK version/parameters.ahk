Showparameters:
	Gui, 3:destroy
	Gui, 3:Font, s9, %fontfamily%
	Gui, 3:Add, Tab3 , choose1, Dagger|Arrow|Edit|Sword basics|Sword Tab 1|Sword Tab 2

;======================= Dagger parameters  =======================

		Gui, 3:Tab , Dagger
			Gui, 3:Font, s9 w400, %fontfamily%
			Gui, 3:Add, Text,, Current hotkey: %daggerhotkey%
			Gui, 3:Add, Button, ghotkeydagger, &New hotkey
			
			Gui, 3:Add, Text, yp+40, Current folder 1: `n%daggerfolder1%
			Gui, 3:Add, Button, gbuttonfolderdagger1, Select folder 1
			Gui, 3:Add, Edit,  x120 yp vfoldername1 w150, %daggerfoldername1%
			
			Gui, 3:Add, Text, x20 yp+40, Current folder 2: %daggerfolder2%
			Gui, 3:Add, Button, x20 yp+20 gbuttonfolderdagger2, Select folder 2
			Gui, 3:Add, Edit,  x120 yp vfoldername2 w150, %daggerfoldername2%
			
			Gui, 3:Add, Text, x20 yp+40, Current folder 3: %daggerfolder3%
			Gui, 3:Add, Button, x20 yp+20 gbuttonfolderdagger3, Select folder 3
			Gui, 3:Add, Edit,  x120 yp vfoldername3 w150, %daggerfoldername3%
			
			Gui, 3:Add, Text,x20 yp+40, Current folder 4: %daggerfolder4%
			Gui, 3:Add, Button, x20 yp+20 gbuttonfolderdagger4, Select folder 4
			Gui, 3:Add, Edit,  x120 yp vfoldername4 w150, %daggerfoldername4%

;======================= Arrow parameters  =======================
		
		Gui, 3:Tab , Arrow
		Gui, 3:Font, s9 w600, %fontfamily%
			Gui, 3:Add, Groupbox, xm+5 ym+60 Section w%groupboxw% h%groupboxh%, Arrow: edit files
			
		Gui, 3:Font, s9 w400, %fontfamily%
			Gui, 3:Add, Text, xs+5 ys+15, Current hotkey: %arrowhotkey%
			Gui, 3:Add, Button, xs+5 ys+30 ghotkeyarrow, &New hotkey

			Gui, 3:Add, Text, xs+5 ys+65 , Current folder: %arrowfolder%
			Gui, 3:Add, Button, xs+5 ys+80 gbuttonfolderarrow, Select folder
		
		Gui, 3:Font, s9 w600, %fontfamily%		
			Gui, 3:Add, Groupbox, xm y200 Section w%groupboxw% h%groupboxh%, Arrow: launch files
		
		Gui, 3:Font, s9 w400, %fontfamily%
			Gui, 3:Add, Text, xs+5 ys+15, Current hotkey: %arrowlaunchhotkey%
			Gui, 3:Add, Button, xs+5 ys+30 ghotkeyarrowlaunch, &New hotkey
			
			Gui, 3:Add, Text, xs+5 ys+65 , Current folder:  %arrowlaunchfolder%
			Gui, 3:Add, Button, xs+5 ys+80 gbuttonfolderarrowlaunch, Select folder

;======================= Edit parameters  =======================

		Gui, 3:Tab , Edit
		
		Gui, 3:Add, Text,, How typed text is added to the file
		Gui, 3:Add, Text,, Current option: %appendmode%
		Gui, 3:Add, Radio, v0line, 1: Text Added at the end of the file
		Gui, 3:Add, Radio, v1line, 2: Text Added one line below (no separator)
		Gui, 3:Add, Radio, v2lines, 3: Text Added 1 line below with a separator
		Gui, 3:Add, Radio, v2lines2, 4: Text Added 2 lines below with a separator
		Gui, 3:Add, Text,, Separator:
		Gui, 3:Add, Edit, w%smalleditw% vseparator, %separator%

;======================= Sword basics parameters =======================
	
	Gui, 3:Tab , Sword basics
	
		Gui, 3:Add, Text,, Current hotkey: %swordhotkey%
		Gui, 3:Add, Button, ghotkeysword, New Hotkey
		Gui, 3:Add, Text, yp+30 w200, Tip: when Sword is focused, press space or tab to switch between tabs.

		Gui, 3:Add, Button, xp y150 h%buttonsettingsh% w%buttonsettingsw% gF1settings, F1`r%F1label%
		Gui, 3:Add, Button, gF2settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F2`r%F2label%
		Gui, 3:Add, Button, gF3settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F3`r%F3label%
		Gui, 3:Add, Button, gF4settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F4`r%F4label%
		Gui, 3:Add, Button, gF5settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F5`r%F5label%
		Gui, 3:Add, Button, gF6settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F6`r%F6label%
		Gui, 3:Add, Button, gF7settings x24 yp+%buttonsettingsh% h%buttonsettingsh% w%buttonsettingsw%, F7`r%F7label%
		Gui, 3:Add, Button, gF8settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F8`r%F8label%
		Gui, 3:Add, Button, gF9settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F9`r%F9label%
		Gui, 3:Add, Button, gF10settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F10`r%F10label%
		Gui, 3:Add, Button, gF11settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F11`r%F11label%
		Gui, 3:Add, Button, gF12settings xp+%buttonsettingsw% h%buttonsettingsh% w%buttonsettingsw%,  F12`r%F12label%
		

;======================= Sword Tab 1 parameters =======================

	Gui, 3:Tab , Sword Tab 1
	
;===========FIRST LINE

		Gui, 3:Add, Button, x20 y90 w%buttonsettingsw% h%buttonsettingsh% gTab1A1settings,   &%A1letter%`r%Tab1A1label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1A2settings,       &%A2letter%`r%Tab1A2label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1A3settings,       &%A3letter%`r%Tab1A3label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1A4settings,       &%A4letter%`r%Tab1A4label%

;===========SECOND LINE
		
		Gui, 3:Add, Button, x30 yp+%buttonsettingsh% h%buttonsettingsh% w%buttonsettingsw% gTab1B1settings,      &%B1letter%`r%Tab1B1label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1B2settings,          &%B2letter%`r%Tab1B2label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1B3settings,          &%B3letter%`r%Tab1B3label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1B4settings,          &%B4letter%`r%Tab1B4label%

;===========THIRD LINE

		Gui, 3:Add, Button, x50 yp+%buttonsettingsh% h%buttonsettingsh% w%buttonsettingsw% gTab1C1settings,&%C1letter%`r%Tab1C1label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1C2settings,    &%C2letter%`r%Tab1C2label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1C3settings,    &%C3letter%`r%Tab1C3label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gTab1C4settings,    &%C4letter%`r%Tab1C4label%

		Gui, 3:Add, Text, x20 y60, Tab 1 name:
		Gui, 3:Add, Edit,  x90 yp vnewtab1name w150, %Tab1name%

;======================= Sword Tab 2 parameters =======================

	Gui, 3:Tab , Sword Tab 2

;===========FIRST LINE

		Gui, 3:Add, Button, x20 y90 w%buttonsettingsw% h%buttonsettingsh% gtab2A1settings,   &%A1letter%`r%tab2A1label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2A2settings,       &%A2letter%`r%tab2A2label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2A3settings,       &%A3letter%`r%tab2A3label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2A4settings,       &%A4letter%`r%tab2A4label%

;===========SECOND LINE
		
		Gui, 3:Add, Button, x30 yp+%buttonsettingsh% h%buttonsettingsh% w%buttonsettingsw% gtab2B1settings,      &%B1letter%`r%tab2B1label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2B2settings,          &%B2letter%`r%tab2B2label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2B3settings,          &%B3letter%`r%tab2B3label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2B4settings,          &%B4letter%`r%tab2B4label%

;===========THIRD LINE

		Gui, 3:Add, Button, x50 yp+%buttonsettingsh% h%buttonsettingsh% w%buttonsettingsw% gtab2C1settings,&%C1letter%`r%tab2C1label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2C2settings,    &%C2letter%`r%tab2C2label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2C3settings,    &%C3letter%`r%tab2C3label%
		Gui, 3:Add, Button, x+%spacew% h%buttonsettingsh% w%buttonsettingsw% gtab2C4settings,    &%C4letter%`r%tab2C4label%
		
		Gui, 3:Add, Text, x20 y60, Tab 2 name:
		Gui, 3:Add, Edit,  x90 yp vnewtab2name w150, %Tab2name%

	Gui, 3:tab
	Gui, 3:Add, Button, x10 gsavesettings Default, &Save && reload
	Gui, 3:Add, Button, yp x100 gcancel, Cancel
	Gui, 3:Add, Button, yp xp200 ghelp, Help
	Gui, 3:Add, Button, yp xp140 ghacknasa, Hack NASA
	Gui, 3:Add, Button, yp xp100 glaunchstartup, Launch on startup
	Gui, 3:Add, Text, xp-200 yp+25, Hotkey syntax: ctrl ^ | alt ! | shift + | windows #
	Gui 3:show,, Dragonglass - parameters
	Return

;======================= Definitions =======================

help:
	Gosub helpmessage
	Return
	
hacknasa:
	msgbox,,NASA hacked, Congratulations! You just hacked the NASA.
	Return
	
launchstartup:
	Gui, 8:Add, Text, w350, Once you've placed dragonglass.exe and config.ini files in the folder of your choice, if you want Dragonglass to launch on startup simply create a shortcut of the .exe and place it in your start folder.
	Gui, 8:Add, Button, gstartfolder Default, Open start folder
	Gui, 8:Add, Button, gstartcancel, Cancel
	Gui 8:Show,, Launch on startup
	Return

startfolder:
	Run, %A_Startup%
	Return

startcancel:
	Gui, 8:destroy
	Return

buttonfoldervision:
	FileSelectfolder, visionselectedfolder,, 3, If the folder contain a lot of files, it may take some time to load.
	Return

buttonfolderdagger1:
	FileSelectfolder, daggerselectedfolder1,, 3, If the folder contain a lot of files, it may take some time to load.
	Return

buttonfolderdagger2:
	FileSelectfolder, daggerselectedfolder2,, 3, If the folder contain a lot of files, it may take some time to load.
	Return

buttonfolderdagger3:
	FileSelectfolder, daggerselectedfolder3,, 3, If the folder contain a lot of files, it may take some time to load.
	Return

buttonfolderdagger4:
	FileSelectfolder, daggerselectedfolder4,, 3, If the folder contain a lot of files, it may take some time to load.
	Return

buttonfolderarrow:
	FileSelectfolder, arrowselectedfolder,, 3, If the folder contain a lot of files, it may take some time to load.
	Return

buttonfolderarrowlaunch:
	FileSelectfolder, arrowlaunchselectedfolder,, 3, If the folder contain a lot of files, it may take some time to load.
	Return

hotkeydagger:
	superfunction=daggerhotkey
	gosub, choosehotkey
	Return

hotkeyvision:
	superfunction=visionhotkey
	gosub, choosehotkey
	Return

hotkeyarrow:
	superfunction=arrowhotkey
	gosub, choosehotkey
	Return

hotkeyarrowlaunch:
	superfunction=arrowlaunchhotkey
	gosub, choosehotkey	
	Return

hotkeysword:
	superfunction=swordhotkey
	gosub, choosehotkey	
	Return

choosehotkey:
	Gui, 6:Add, Text,,  Enter a hotkey
	Gui, 6:Add, Hotkey, vnewhotkey y46 xp
	Gui, 6:Add, CheckBox, vwin y29 xp, Windows key + 
	Gui, 6:Add, Button, ghotkeysave Default xp y86, Save
	Gui 6:show, w200, Dragonglass
	Return

hotkeysave:
	Gui, 6:Submit
	if (win)
	IniWrite, #%newhotkey%, config.ini, Settings, %superfunction%
	else
	IniWrite, %newhotkey%, config.ini, Settings, %superfunction%
	Return

keyfile:
FileSelectFile, selectedfile
GuiControl,2:, superpath, %selectedfile%
return

keyfolder:
FileSelectfolder, selectedfolder,, 3
GuiControl,2:, superpath, %selectedfolder%
Return

superkeysettings:
	Gui, 2:Add, Text,, Key label:
	Gui, 2:Add, Edit, w100 vlabelnew, %universallabel%
	Gui, 2:Add, Text,, File, folder or website to launch:
	Gui, 2:Add, Edit, w270 vsuperpath, %universalrun%
	Gui, 2:Add, Button, gkeyfile, &Select file
	Gui, 2:Add, Button, yp x80 gkeyfolder, Select folder
	Gui, 2:Add, CheckBox, x10 vweb, &is a web search
	Gui, 2:Add, Button, gchoosesearch yp x120, &Choose a websearch
	Gui, 2:Add, Button, gsupersave Default yp+30 x5, &Save
	Gui 2:show, w300, Customize %universalletter% key
	Return

supersave:
	Gui, 2:Submit
	if (web)
	IniWrite, 1 , config.ini, Keys, %universalkey%search
	Else
	{
	IniWrite, 0 , config.ini, Keys, %universalkey%search
	}
	IniWrite, %superpath%, config.ini, Keys, %universalkey%run
	IniWrite, %labelnew%, config.ini, Keys, %universalkey%label
	Gui, 2:destroy
	Return

choosesearch:
	Gui, 7:Add, DropDownList, vsupersearch, Google|Wikipedia|Youtube|IMDB|Maps|Images|Dictionary
	Gui, 7:Add, Text, w200, Pro tip: you can add any website as a web search by clicking "is a web search" and pasting the correct URL
	Gui, 7:Add, button, Default gsupersubmit, &OK
	Gui, 7:show,, Choose a website
	Return
	
supersubmit:
	Gui, Submit
	if (supersearch = "Google")
	{
	GuiControl,2:, superpath, https://www.google.com/search?&q=
	GuiControl,2:, labelnew, Google
	}
	if (supersearch = "Wikipedia")
	{
	GuiControl,2:, superpath, https://en.wikipedia.org/w/index.php?search=
	GuiControl,2:, labelnew, Wikipedia
	}
	if (supersearch = "Youtube")
	{
	GuiControl,2:, superpath, https://www.youtube.com/results?search_query=
	GuiControl,2:, labelnew, Youtube
	}
	if (supersearch = "IMDB")
	{
	GuiControl,2:, superpath, https://www.imdb.com/find/?q=
	GuiControl,2:, labelnew, IMDB
	}
	if (supersearch = "Maps")
	{
	GuiControl,2:, superpath, https://www.google.com/maps/search/
	GuiControl,2:, labelnew, Maps
	}
	if (supersearch = "Images")
	{
	GuiControl,2:, superpath, https://www.google.com/search?tbm=isch&q=
	GuiControl,2:, labelnew, Images
	}
	if (supersearch = "Dictionary")
	{
	GuiControl,2:, superpath, https://www.dictionary.com/browse/
	GuiControl,2:, labelnew, Dictionary
	}
	else
	{
	}
	Gui, 7:destroy
	Return
	
;=========== F keys

F1settings:
	universalkey=F1
	universalletter=F1
	Iniread, universalrun, config.ini, Keys, F1run
	Iniread, universallabel, config.ini, Keys, F1label
	Gosub, superkeysettings
	Return
	
F2settings:
	universalkey=F2
	universalletter=F2
	Iniread, universalrun, config.ini, Keys, F2run
	Iniread, universallabel, config.ini, Keys, F2label
	Gosub, superkeysettings
	Return
	
F3settings:
	universalkey=F3
	universalletter=F3
	Iniread, universalrun, config.ini, Keys, F3run
	Iniread, universallabel, config.ini, Keys, F3label
	Gosub, superkeysettings
	Return
	
F4settings:
	universalkey=F4
	universalletter=F4
	Iniread, universalrun, config.ini, Keys, F4run
	Iniread, universallabel, config.ini, Keys, F4label
	Gosub, superkeysettings
	Return
	
F5settings:
	universalkey=F5
	universalletter=F5
	Iniread, universalrun, config.ini, Keys, F5run
	Iniread, universallabel, config.ini, Keys, F5label
	Gosub, superkeysettings
	Return
	
F6settings:
	universalkey=F6
	universalletter=F6
	Iniread, universalrun, config.ini, Keys, F6run
	Iniread, universallabel, config.ini, Keys, F6label
	Gosub, superkeysettings
	Return
	
F7settings:
	universalkey=F7
	universalletter=F7
	Iniread, universalrun, config.ini, Keys, F7run
	Iniread, universallabel, config.ini, Keys, F7label
	Gosub, superkeysettings
	Return
	
F8settings:
	universalkey=F8
	universalletter=F8
	Iniread, universalrun, config.ini, Keys, F8run
	Iniread, universallabel, config.ini, Keys, F8label
	Gosub, superkeysettings
	Return
	
F9settings:
	universalkey=F9
	universalletter=F9
	Iniread, universalrun, config.ini, Keys, F9run
	Iniread, universallabel, config.ini, Keys, F9label
	Gosub, superkeysettings
	Return
	
F10settings:
	universalkey=F10
	universalletter=F10
	Iniread, universalrun, config.ini, Keys, F10run
	Iniread, universallabel, config.ini, Keys, F10label
	Gosub, superkeysettings
	Return
	
F11settings:
	universalkey=F11
	universalletter=F11
	Iniread, universalrun, config.ini, Keys, F11run
	Iniread, universallabel, config.ini, Keys, F11label
	Gosub, superkeysettings
	Return
	
F12settings:
	universalkey=F12
	universalletter=F12
	Iniread, universalrun, config.ini, Keys, F12run
	Iniread, universallabel, config.ini, Keys, F12label
	Gosub, superkeysettings
	Return

;=========== Tab 1

Tab1A1settings:
	universalkey=Tab1A1
	Iniread, universalletter, config.ini, Keys, A1letter
	Iniread, universalrun, config.ini, Keys, Tab1A1run
	Iniread, universallabel, config.ini, Keys, Tab1A1label
	Gosub, superkeysettings
	Return

Tab1A2settings:
	universalkey=Tab1A2
	Iniread, universalletter, config.ini, Keys, A2letter
	Iniread, universalrun, config.ini, Keys, Tab1A2run
	Iniread, universallabel, config.ini, Keys, Tab1A2label
	Gosub, superkeysettings
	Return

Tab1A3settings:
	universalkey=Tab1A3
	Iniread, universalletter, config.ini, Keys, A3letter
	Iniread, universalrun, config.ini, Keys, Tab1A3run
	Iniread, universallabel, config.ini, Keys, Tab1A3label
	Gosub, superkeysettings
	Return

Tab1A4settings:
	universalkey=Tab1A4
	Iniread, universalletter, config.ini, Keys, A4letter
	Iniread, universalrun, config.ini, Keys, Tab1A4run
	Iniread, universallabel, config.ini, Keys, Tab1A4label
	Gosub, superkeysettings
	Return

Tab1B1settings:
	universalkey=Tab1B1
	Iniread, universalletter, config.ini, Keys, B1letter
	Iniread, universalrun, config.ini, Keys, Tab1B1run
	Iniread, universallabel, config.ini, Keys, Tab1B1label
	Gosub, superkeysettings
	Return

Tab1B2settings:
	universalkey=Tab1B2
	Iniread, universalletter, config.ini, Keys, B2letter
	Iniread, universalrun, config.ini, Keys, Tab1B2run
	Iniread, universallabel, config.ini, Keys, Tab1B2label
	Gosub, superkeysettings
	Return

Tab1B3settings:
	universalkey=Tab1B3
	Iniread, universalletter, config.ini, Keys, B3letter
	Iniread, universalrun, config.ini, Keys, Tab1B3run
	Iniread, universallabel, config.ini, Keys, Tab1B3label
	Gosub, superkeysettings
	Return

Tab1B4settings:
	universalkey=Tab1B4
	Iniread, universalletter, config.ini, Keys, B4letter
	Iniread, universalrun, config.ini, Keys, Tab1B4run
	Iniread, universallabel, config.ini, Keys, Tab1B4label
	Gosub, superkeysettings
	Return
	
Tab1C1settings:
	universalkey=Tab1C1
	Iniread, universalletter, config.ini, Keys, C1letter
	Iniread, universalrun, config.ini, Keys, Tab1C1run
	Iniread, universallabel, config.ini, Keys, Tab1C1label
	Gosub, superkeysettings
	Return

Tab1C2settings:
	universalkey=Tab1C2
	Iniread, universalletter, config.ini, Keys, C2letter
	Iniread, universalrun, config.ini, Keys, Tab1C2run
	Iniread, universallabel, config.ini, Keys, Tab1C2label
	Gosub, superkeysettings
	Return

Tab1C3settings:
	universalkey=Tab1C3
	Iniread, universalletter, config.ini, Keys, C3letter
	Iniread, universalrun, config.ini, Keys, Tab1C3run
	Iniread, universallabel, config.ini, Keys, Tab1C3label
	Gosub, superkeysettings
	Return

Tab1C4settings:
	universalkey=Tab1C4
	Iniread, universalletter, config.ini, Keys, C4letter
	Iniread, universalrun, config.ini, Keys, Tab1C4run
	Iniread, universallabel, config.ini, Keys, Tab1C4label
	Gosub, superkeysettings
	Return
	

;=========== Tab 2

Tab2A1settings:
	universalkey=Tab2A1
	Iniread, universalletter, config.ini, Keys, A1letter
	Iniread, universalrun, config.ini, Keys, Tab2A1run
	Iniread, universallabel, config.ini, Keys, Tab2A1label
	Gosub, superkeysettings
	Return

Tab2A2settings:
	universalkey=Tab2A2
	Iniread, universalletter, config.ini, Keys, A2letter
	Iniread, universalrun, config.ini, Keys, Tab2A2run
	Iniread, universallabel, config.ini, Keys, Tab2A2label
	Gosub, superkeysettings
	Return

Tab2A3settings:
	universalkey=Tab2A3
	Iniread, universalletter, config.ini, Keys, A3letter
	Iniread, universalrun, config.ini, Keys, Tab2A3run
	Iniread, universallabel, config.ini, Keys, Tab2A3label
	Gosub, superkeysettings
	Return

Tab2A4settings:
	universalkey=Tab2A4
	Iniread, universalletter, config.ini, Keys, A4letter
	Iniread, universalrun, config.ini, Keys, Tab2A4run
	Iniread, universallabel, config.ini, Keys, Tab2A4label
	Gosub, superkeysettings
	Return

Tab2B1settings:
	universalkey=Tab2B1
	Iniread, universalletter, config.ini, Keys, B1letter
	Iniread, universalrun, config.ini, Keys, Tab2B1run
	Iniread, universallabel, config.ini, Keys, Tab2B1label
	Gosub, superkeysettings
	Return

Tab2B2settings:
	universalkey=Tab2B2
	Iniread, universalletter, config.ini, Keys, B2letter
	Iniread, universalrun, config.ini, Keys, Tab2B2run
	Iniread, universallabel, config.ini, Keys, Tab2B2label
	Gosub, superkeysettings
	Return

Tab2B3settings:
	universalkey=Tab2B3
	Iniread, universalletter, config.ini, Keys, B3letter
	Iniread, universalrun, config.ini, Keys, Tab2B3run
	Iniread, universallabel, config.ini, Keys, Tab2B3label
	Gosub, superkeysettings
	Return

Tab2B4settings:
	universalkey=Tab2B4
	Iniread, universalletter, config.ini, Keys, B4letter
	Iniread, universalrun, config.ini, Keys, Tab2B4run
	Iniread, universallabel, config.ini, Keys, Tab2B4label
	Gosub, superkeysettings
	Return
Tab2C1settings:
	universalkey=Tab2C1
	Iniread, universalletter, config.ini, Keys, C1letter
	Iniread, universalrun, config.ini, Keys, Tab2C1run
	Iniread, universallabel, config.ini, Keys, Tab2C1label
	Gosub, superkeysettings
	Return

Tab2C2settings:
	universalkey=Tab2C2
	Iniread, universalletter, config.ini, Keys, C2letter
	Iniread, universalrun, config.ini, Keys, Tab2C2run
	Iniread, universallabel, config.ini, Keys, Tab2C2label
	Gosub, superkeysettings
	Return

Tab2C3settings:
	universalkey=Tab2C3
	Iniread, universalletter, config.ini, Keys, C3letter
	Iniread, universalrun, config.ini, Keys, Tab2C3run
	Iniread, universallabel, config.ini, Keys, Tab2C3label
	Gosub, superkeysettings
	Return

Tab2C4settings:
	universalkey=Tab2C4
	Iniread, universalletter, config.ini, Keys, C4letter
	Iniread, universalrun, config.ini, Keys, Tab2C4run
	Iniread, universallabel, config.ini, Keys, Tab2C4label
	Gosub, superkeysettings
	Return

;================ Save all and reload

cancel:
	Gui, 3:destroy
	return

savesettings:
	Gui, 3:Submit
	IniWrite, %foldername1%, config.ini, Settings, daggerfoldername1
	IniWrite, %foldername2%, config.ini, Settings, daggerfoldername2
	IniWrite, %foldername3%, config.ini, Settings, daggerfoldername3
	IniWrite, %foldername4%, config.ini, Settings, daggerfoldername4
	if (daggerselectedfolder1 = "")
	{
	}
	else
	{
		IniWrite, %daggerselectedfolder1%, config.ini, Settings, daggerfolder1
	}
	
	if (daggerselectedfolder2 = "")
	{
	}
	else
	{
		IniWrite, %daggerselectedfolder2%, config.ini, Settings, daggerfolder2
	}
	
	if (daggerselectedfolder3 = "")
	{
	}
	else
	{
		IniWrite, %daggerselectedfolder3%, config.ini, Settings, daggerfolder3
	}
	
	if (visionselectedfolder = "")
	{
	}
	else
	{
		IniWrite, %visionselectedfolder%, config.ini, Settings, Visionfolder
	}
	
	if (arrowselectedfolder = "")
	{
	}
	else
	{
		IniWrite, %arrowselectedfolder%, config.ini, Settings, arrowfolder
	}
	
	if (arrowlaunchselectedfolder = "")
	{
	}
	else
	{
		IniWrite, %arrowlaunchselectedfolder%, config.ini, Settings, arrowlaunchfolder
	}	

	IniWrite, %newtab1name%, config.ini, Settings, Tab1name
	IniWrite, %newtab2name%, config.ini, Settings, Tab2name
	IniWrite, %separator%, config.ini, Settings, separator
	
	If (0line==1)
	IniWrite, 1, config.ini, Settings, appendmode
	If (1line==1)
	IniWrite, 2, config.ini, Settings, appendmode
	If (2lines==1)
	IniWrite, 3, config.ini, Settings, appendmode
	If (2lines2==1)
	IniWrite, 4, config.ini, Settings, appendmode
	Gui, 3:destroy
	Reload
	Return

;============================= Key strokes specific to Parameters
	
#IfWinActive, Dragonglass - parameters ahk_class AutoHotkeyGUI

;======================= F keys

	F1::
	gosub f1settings
	Return
	
	F2::
	gosub f2settings
	Return
	F3::
	gosub f3settings
	Return
	F4::
	gosub f4settings
	Return
	F5::
	gosub f5settings
	Return
	F6::
	gosub f6settings
	Return
	F7::
	gosub f7settings
	Return
	F8::
	gosub f8settings
	Return
	F9::
	gosub f9settings
	Return
	F10::
	gosub f10settings
	Return
	F11::
	gosub f11settings
	Return
	F12::
	gosub f12settings
	Return
	
	
#Ifwinactive
