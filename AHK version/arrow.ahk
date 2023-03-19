CoordMode, Menu

;======================= Arrow functions =======================

ShowArrow:
	Gui, Destroy
	If (arrowfolder = "")
	{
		Msgbox,, Dragonglass, Select a folder and then press the hotkey again. If you choose one that contains a lot of files, it may take some time to load.
		Gosub buttonfolderarrow
		IniWrite, %arrowselectedfolder%, config.ini, Settings, arrowfolder
		Reload
	}
	Else
	{
		Menu, dragonglass, Add
		Menu, dragonglass, deleteAll

		Loop, %arrowfolder%\*.*, 2, 1
		{
			StringReplace,Line,A_LoopFileFullPath,%arrowfolder%\,
			StringGetPos,pos,Line,\,R
			StringLeft,pardir,Line,%pos%
			StringReplace,dir,Line,%pardir%,
			StringReplace,dir,dir,\
			Menu,%Line%,add,---Open folder---,godir
			if pardir = 
				pardir = dragonglass
			Menu,%pardir%,add,%dir%,:%Line%
		}

		Loop, %arrowfolder%\*.*, 0, 1
		{
			StringReplace,Line,A_LoopFileFullPath,%arrowfolder%\,
			StringGetPos,pos,Line,\,R
			StringLeft,pardir,Line,%pos%
			StringReplace,file,Line,%pardir%,
			StringReplace,file,file,\
			if pardir = 
				pardir = dragonglass
			Menu,%pardir%,add,%file%,arrowedit
		}
		Menu,dragonglass,add
		Menu,dragonglass,add,---Open folder---,godir
		Menu,dragonglass,add,---New File---,newfile
		Menu,dragonglass,show
	}
	Return

arrowedit:
	if A_ThisMenu = dragonglass
		universalpath=%arrowfolder%\%A_ThisMenuItem%
	else
	{
		universalpath=%arrowfolder%\%A_ThisMenu%\%A_ThisMenuItem%
	}
	supertitle=%A_ThisMenuItem%
	Gosub universaledit
	Return
	
;======================= Arrow launch functions =======================

ShowArrowLaunch:
	If (arrowlaunchfolder = "")
	{
		Msgbox Select a folder and then press the hotkey again. If you choose one that contains a lot of files, it may take some time to load.
		Gosub buttonfolderarrowlaunch
		IniWrite, %arrowlaunchselectedfolder%, config.ini, Settings, arrowlaunchfolder
		Reload
	}
	Else
	{
		Menu, dragonglass2, Add
		Menu, dragonglass2, deleteAll
		Menu,dragonglass2,add,%arrowlaunchfolder%,godir
		Menu,dragonglass2,disable,%arrowlaunchfolder%
		Menu,dragonglass2,add,---Open folder---,godir

		Loop, %arrowlaunchfolder%\*.*, 2, 1
		{
			StringReplace,Line,A_LoopFileFullPath,%arrowlaunchfolder%\,
			StringGetPos,pos,Line,\,R
			StringLeft,pardir,Line,%pos%
			StringReplace,dir,Line,%pardir%,
			StringReplace,dir,dir,\
			Menu,%Line%,add,---Open folder---,godir

			if pardir = 
				pardir = dragonglass2
			Menu,%pardir%,add,%dir%,:%Line%
		}

		Loop, %arrowlaunchfolder%\*.*, 0, 1
		{
			StringReplace,Line,A_LoopFileFullPath,%arrowlaunchfolder%\,
			StringGetPos,pos,Line,\,R
			StringLeft,pardir,Line,%pos%
			StringReplace,file,Line,%pardir%,
			StringReplace,file,file,\
			if pardir = 
				pardir = dragonglass2
			Menu,%pardir%,add,%file%,arrowlaunch
		}
		Menu, dragonglass2, Show
	}
	Return

ArrowLaunch:
	if A_ThisMenu = dragonglass2
		run %arrowlaunchfolder%\%A_ThisMenuItem%
	else
		run %arrowlaunchfolder%\%A_ThisMenu%\%A_ThisMenuItem%
	Return

godir:
	if A_ThisMenu = dragonglass
			run %arrowfolder%
		else
			run %arrowfolder%\%A_ThisMenu%
	Return

newfile:
	Gui, 2:Font, s10 w400, %fontfamily%
	Gui, 2:Add, Text,, Enter the file's name and extension
	Gui, 2:Add, Edit, vnewfilename
	Gui, 2:Add, Button, w%daggerbuttonw% x%saveeditx% gnewfilesave default, &Create and edit
	Gui 2:Show,, New file
	Return

newfilesave:
	Gui, Submit
	Gui, 2:destroy
	fileappend,, %arrowfolder%\%newfilename%
	universalpath=%arrowfolder%\%newfilename%
	supertitle=%newfilename%
	Gosub universaledit
	Return
