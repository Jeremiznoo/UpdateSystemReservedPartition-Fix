Powershell.exe -Command "& {Start-Process Powershell.exe -ArgumentList '-noexit -ExecutionPolicy Bypass -File %~dp0Win11Bypass.ps1' -Verb RunAs}"


# %~dp0 puis le nom du script 
# -ExecutionPolicy Bypass 