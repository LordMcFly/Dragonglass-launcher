# Dragonglass-launcher
A simple launcher to edit text files on the fly and launch files, folders, websites and websearches.

Dragonglass launcher started as a companion for Obsidian (thus the name) which is a software for organising and editing large amounts of text files. But I didn't want to have to launch it everytime I wanted add just a few sentences to one file. So I wanted a way to browse a specific set of files, choose one and quickly add text at the end of it. The final result is made of 3 tools, each with its own customizable hotkey:

-Dagger: a GUI with a tree view of a folder on the left side and a text file preview on the right. F1, F2, F3 and F4 each loads a custom folder path and you can modify the file's content directly in the preview then press ctrl+S or the button Save. Or you can either launch the file (alt+L) or edit it (alt+E). Editing it means a new GUI will pop up with an empty edit box. Type or paste anything and when pressing "Save" the text will be added at the end of the file.

[img]https://i.imgur.com/yf4R0su.png[/img]

[img]https://i.imgur.com/IF4JCl4.png[/img]


-Arrow: more or less the same as Dagger but in a menu instead of a GUI. To choose between launch and edit, it can be activated via 2 different hotkeys with a different folder path for each.

[img]https://i.imgur.com/F9diX3f.png[/img]


-Sword: this is sort of a bonus script that I use everyday, it simply displays a GUI where each button corresponds to a keyboard key and when pressing that key, it launches any file, folder, website or web search (by default, it has a QWERTY layout but you can modify each key by changing the letters in the config.ini file).

[img]https://i.imgur.com/x1jVHpc.png[/img]


You can also customize how the text is appended to the file: return to line, return to line twice, whether or not to add a separator between each entry, etc.

I tried to made the code user friendly with each main component separated in a different .ahk file and comments separating sections for easy editing. There's even a whole parameter GUI where everything is explained so you can customize without editing the code. This also means that it can be used by someone with zero knowledge of AHK. Feel free to use and modify this as you will and I hope it will prove useful to some of you!

You can find either the .exe or the .ahk files on my github:
[url]https://github.com/LordMcFly/Dragonglass-launcher[/url]

Credits: Dagger and Arrow are reworks of scripts from Pulover and compuboy_r respectively. And of course a huge thanks to AHK forum veteran members for helping the million noob questions we're all asking. Without you, I could never have done all this.
