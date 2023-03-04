ShowDagger:

	Gui, Destroy
	ImageListID := IL_Create(10)
	
	Gui, 1:Font, s9 w400, %fontfamily%
	Gui, 1:Add, TreeView, x10 y%editposy% h%treeh% w%treew% ImageList%ImageListID% vTreeView gSuperEvent
	Gui, 1:Font, s10 w400, %fontfamily%
	Gui,1: Add, Edit, y%editposy% x%editposx% w%editw% h%edith% vdaggercontent, %text%
	
	Gui, 1:Font, s9 w400, %fontfamily%
	Gui, 1:Add, Button, x10 y10 gLoadFolder1 w%daggerbuttonw% h%daggerbuttonh%, F1`n%daggerfoldername1%
	Gui, 1:Add, Button, gLoadFolder2 w%daggerbuttonw% h%daggerbuttonh% yp xp+%daggerbuttonw%, F2`n%daggerfoldername2%
	Gui, 1:Add, Button, gLoadFolder3 w%daggerbuttonw% h%daggerbuttonh% yp xp+%daggerbuttonw%*2, F3`n%daggerfoldername3%
	Gui, 1:Add, Button, gLoadFolder4 w%daggerbuttonw% h%daggerbuttonh% yp xp+%daggerbuttonw%*3, F4`n%daggerfoldername4%
	Gui, 1:Add, Checkbox, vLoadIcons gLoadIcons x15, Load Icons
	
	Gui, 1:Add, Button, Default w%daggerbutton2w% h%daggerbuttonh% gdaggerlaunch x10 y356, &Launch
	Gui, 1:Add, Button, w%daggerbutton2w% h%daggerbuttonh% xp+%daggerbutton2w% yp gdaggeredit, &Edit
	Gui, 1:Add, Button, w%treew% h%daggerbuttonh% yp+%daggerbuttonh% x10 gsavestuff, &Save
	Gui, 1:Add, Button,  gShowparameters w%treew% h%daggerbuttonh% yp+%daggerbuttonh% xp, &Parameters
	

	ControlFocus ,TreeView
	Gui, 1:Show,, Dragonglass - Dagger

	Gosub LoadFolder1

	Return

;======================= Function

savestuff:
	GuiControlGet, newtext, ,daggercontent
	FileDelete, %universalfolder%%SelectedFullPath%
	FileAppend, %newtext%, %universalfolder%%SelectedFullPath%
	ToolTip , Changes saved, %editposx%, %editposy%
	SetTimer, RemoveToolTip, -3000
	Return


RemoveToolTip:
ToolTip
return

daggerlaunch:
	Run  %universalfolder%%SelectedFullPath%
	Return

daggeredit:
	universalpath=%universalfolder%%SelectedFullPath%
	supertitle=%SelectedFullPath%
	gosub universaledit
	Return
	
SuperEvent:

	if A_GuiEvent <> S
		return 

	TV_GetText(SelectedItemText, A_EventInfo)
	ParentID := A_EventInfo

	Loop
	{
		ParentID := TV_GetParent(ParentID)
		if not ParentID
			break

		TV_GetText(ParentText, ParentID)
		SelectedItemText = %ParentText%\%SelectedItemText%
	}

	SelectedFullPath = %TreeRoot%\%SelectedItemText%
	FileRead, knowledge, %universalfolder%%SelectedFullPath%
	GuiControl, 1:, daggercontent, %knowledge%

	return



CreateTreeView(TreeViewDefinitionString) {
	IDs := {} 
	Loop, parse, TreeViewDefinitionString, `n, `r
	{
		if A_LoopField is space
			continue
		Item := RTrim(A_LoopField, A_Space A_Tab), Item := LTrim(Item, A_Space), Level := 0
		While (SubStr(Item,1,1) = A_Tab)
			Level += 1,	Item := SubStr(Item, 2)
		RegExMatch(Item, "([^`t]*)([`t]*)([^`t]*)", match)	; match1 = ItemName, match3 = Options
		if (Level=0)
			IDs["Level0"] := TV_Add(match1, 0, match3)
		else
			IDs["Level" Level] := TV_Add(match1, IDs["Level" Level-1], match3)
	}
}


CreateString(Folder, Call=0)
{
	global LoadIcons
	
	Call++
	Loop, %Folder%\*.*, 1
	{
		If LoadIcons
			Icon := "`tIcon" GetIcon(A_LoopFileFullPath)
		If InStr(FileExist(A_LoopFileFullPath), "D")
		{
			Loop, %Call%
				String .= "`t"
			String .= A_LoopFileName . Icon "`n"
			String .= CreateString(A_LoopFileFullPath, Call)
		}
		Else
		{
			Loop, %Call%
				Files .= "`t"
			Files .= A_LoopFileName . Icon "`n"
		}
	}
	String .= Files
	Call--
	return String
}

LoadFolder1:
	If (daggerfolder1 = "")
	{
		Msgbox,, Dragonglass, Select a folder and then press the hotkey again. If you choose one that contains a lot of files, it may take some time to load.
		gosub selectdaggerfolder1
	}
	Else
	{
	}
	universalfolder=%daggerfolder1%
	gosub supertree
	return

LoadFolder2:
	If (daggerfolder2 = "")
		gosub selectdaggerfolder2
	Else
	{
	}
	universalfolder=%daggerfolder2%
	gosub supertree
	return
	
LoadFolder3:
	If (daggerfolder3 = "")
		gosub selectdaggerfolder3
	Else
	{
	}
	universalfolder=%daggerfolder3%
	gosub supertree
	return

LoadFolder4:
	If (daggerfolder4 = "")
		gosub selectdaggerfolder4
	Else
	{
	}
	universalfolder=%daggerfolder4%
	gosub supertree
	return

supertree:
	TV_Delete()
	TVString := CreateString(universalfolder)
	CreateTreeView(TVString)
	return



selectdaggerfolder1:
	FileSelectfolder, selectedfolder,, 3
	IniWrite, %selectedfolder%, config.ini, Settings, daggerfolder1
	Reload
	Return

selectdaggerfolder2:
	FileSelectfolder, selectedfolder,, 3
	IniWrite, %selectedfolder%, config.ini, Settings, daggerfolder2
	Reload
	Return

selectdaggerfolder3:
	FileSelectfolder, selectedfolder,, 3
	IniWrite, %selectedfolder%, config.ini, Settings, daggerfolder3
	Reload
	Return

selectdaggerfolder4:
	FileSelectfolder, selectedfolder,, 3
	IniWrite, %selectedfolder%, config.ini, Settings, daggerfolder4
	Reload
	Return


GetIcon(FileName)
{
	global ImageListID

	sfi_size := A_PtrSize + 8 + (A_IsUnicode ? 680 : 340)
	VarSetCapacity(sfi, sfi_size)
	SplitPath, FileName,,, FileExt
	if FileExt in EXE,ICO,ANI,CUR
	{
		ExtID := FileExt
		IconNumber = 0
	}
	else
	{
		ExtID = 0
		Loop 7
		{
			StringMid, ExtChar, FileExt, A_Index, 1
			If not ExtChar
				break
			ExtID := ExtID | (Asc(ExtChar) << (8 * (A_Index - 1)))
		}
		IconNumber := IconArray%ExtID%
	}
	If not IconNumber
	{
		if not DllCall("Shell32\SHGetFileInfo" . (A_IsUnicode ? "W":"A"), "str",  "." FileExt
			, "uint", (FileExt ? 0x80 : 0), "ptr", &sfi, "uint", sfi_size, "uint", (FileExt ? 0x111 : 0x101))
			IconNumber = 9999999
		else
		{
			hIcon := NumGet(sfi, 0)
			IconNumber := DllCall("ImageList_ReplaceIcon", "ptr", ImageListID, "int", -1, "ptr", hIcon) + 1
			DllCall("DestroyIcon", "ptr", hIcon)
			IconArray%ExtID% := IconNumber
		}
	}
	return IconNumber
}

LoadIcons:
	Gui, Submit, NoHide
	If LoadIcons
		TV_SetImageList(ImageListID)
	Else
		TV_SetImageList(0)
	return

;============================= Key strokes specific to Dagger

#IfWinActive, Dragonglass - Dagger ahk_class AutoHotkeyGUI

^s::
		Gosub savestuff
		Return

F1::
	Gosub LoadFolder1
	return

F2::
	Gosub LoadFolder2
	return

F3::
	Gosub LoadFolder3
	return

#IfWinActive
