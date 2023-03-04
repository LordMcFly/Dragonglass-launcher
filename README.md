# Dragonglass-launcher
A simple launcher to edit text files on the fly and launch files, folders, websites and websearches. It is written in AHK but it is compiled so it can be used as a normal .exe software.

## How to use
-executable version: run Dragonglass-QWERTY.exe

-AHK version: launch main.ahk
For both versions, make sure the config.ini file is in the same folder as the .exe or .ahk. To launch it on windows startup, click the "Launch on startup" button in the parameters windows and follow the instructions.

# Origin story
Dragonglass Launcher started as a companion for [Obsidian](https://obsidian.md/) (thus the name) which is a software for organising and editing large amounts of text files. But I didn't want to have to launch it everytime I wanted add just a few sentences to one file. So I wanted a way to browse a specific set of files, choose one and quickly add text at the end of it. The final result is made of 3 tools, each with its own customizable hotkey.

# Dagger (default: Win+F1)
Interface with a tree view of a folder on the left side and a text file preview on the right. F1, F2, F3 and F4 each loads a custom folder path and you can modify the file's content directly in the preview then press ctrl+S or the button Save. Or you can either launch the file (alt+L) or edit it (alt+E). Editing it means a small window will pop up with an empty edit box. Type or paste anything and when pressing "Save" the text will be added at the end of the file.

![Screenshot 2023-03-04 111038](https://user-images.githubusercontent.com/25079071/222896692-a9ae7ac5-736a-499e-9be9-0b47aab2fada.png)

![Screenshot 2023-03-04 112019](https://user-images.githubusercontent.com/25079071/222896695-e8e6d36c-3000-4fa9-9343-df21a6f06e98.png)

You can also customize how the text is appended to the file: return to line, return to line twice, whether or not to add a separator between each entry, etc.

# Arrow (default: Win+F2)
More or less the same as Dagger but in a contextual menu instead of a window. To choose between launch and edit, it can be activated via 2 different hotkeys with a different folder path for each.

![Screenshot 2023-03-04 111308](https://user-images.githubusercontent.com/25079071/222896671-e47f5a5c-f8a7-4ece-9bf3-eb3179d3943a.png)



# Sword (default: Win+F3)
Simply displays a a window where each button corresponds to a keyboard key and when pressing that key, it launches any file, folder, website or web search (by default, it has a QWERTY layout but you can modify each key by changing the letters in the config.ini file).

![Screenshot 2023-03-04 114652](https://user-images.githubusercontent.com/25079071/222896681-a8620d9b-fe34-457c-a3aa-a451a3ca9796.png)



# Final word
For the AHK version, I tried to made the code user friendly with each main component separated in a different file and comments separating sections for easy editing. Feel free to use and modify this as you will and I hope it will prove useful to some of you!


# Credits
Dagger and Arrow are reworks of scripts from AHK forum members Pulover and compuboy_r respectively. And of course a huge thanks to all the other AHK forum members for helping the million noob questions we're all asking. Without you, I could never have done all this.
