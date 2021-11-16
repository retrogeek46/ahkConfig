#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; This let's any window that partially matches the given name get activated

IniRead, gitPat, config.ini, SENSITIVE_KEYS, PAT
IniRead, swaggerPass, config.ini, SENSITIVE_KEYS, SWAGGER_PASSWORD

F17::
^!Q::
Send ^{Backspace}
return

F21::
Run, %A_Desktop%
return

F23::
Run, "E:\Coding"
return

#ifWinActive Azure Data Studio
F13::
^!1::
Send SELECT * FROM{space}
return
F14::
Send {f5}
return
F15::
Send WITH (NOLOCK)
return

#ifWinActive Microsoft Visual Studio
F13::
Send Console.WriteLine();{Left 2}
return
F14::
Send Debug.Log();{Left 2}
return

#ifWinActive Visual Studio Code
F13::
Send Console.WriteLine();{Left 2}
return
F14::
Send console.log();{Left 2}
return
F15::
SendRaw { get; set; }
return
F16::
Send flaskRun VendorRating/__init__.py
return

#ifWinActive Hyper
F13::
^!1::
Send sudo systemctl restart{space}
return
F14::
^!2::
Send %gitPat%
return

#ifWinActive Swagger UI
F13::
Send Bearer ^V
return
F14::
Send %swaggerPass%
return

#ifWinActive ngrok
F13::
Send ngrok http https://localhost:44367 -host-header="localhost:44367" -region in
return

