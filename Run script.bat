# Don't forget to move the script and this runner to the desktop before execute 

Powershell.exe -Command "& {Start-Process Powershell.exe -ArgumentList '-noexit -ExecutionPolicy Bypass -File %~dp0WinBypass.ps1' -Verb RunAs}"
