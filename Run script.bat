Powershell.exe -Command "& {Start-Process Powershell.exe -ArgumentList '-noexit -ExecutionPolicy Bypass -File %~dp0WinBypass.ps1' -Verb RunAs}"


# %~dp0 puis le nom du script 
# -ExecutionPolicy Bypass 
