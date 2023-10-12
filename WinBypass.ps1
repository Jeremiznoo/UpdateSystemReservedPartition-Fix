##______ Author : J-iznoo______## 

clear
Write-Host ' '
Write-Host 'This script empties the partition reserved for the system so that Windows 11 can be installed on a PC whose partition is full.'
Write-Host ' '

# Starts a loop that will execute the script only if the user answers yes, otherwise the script will be cancelled

do {
    Write-Host ' '
    $NAME = Read-Host -Prompt 'To continue and execute the script, type yes, otherwise the script will be cancelled by typing no '
    if ($NAME -eq "yes") {
        Write-Host ' '
        Write-Host "The script is running..."
    }
    elseif ($NAME -eq "no") {
        Write-Host ' '
        Write-Host "The script has been cancelled by the user"
        Write-Host ' '
        return
    }
    else {
        # Displays an error message for an invalid response
        Write-Host ' '
        Write-Host "Invalid answer. Please answer with 'yes' or 'no'."
    }
} until ($NAME -eq "yes" -or $NAME -eq "no")
# End of do-while loop

# Gets the execution policy for the current user
Get-ExecutionPolicy -Scope CurrentUser

# Mount drive Y: for the system partition
mountvol y: /s

# Accesses directory Y:\EFI\Microsoft\BOOT
cd Y:\EFI\Microsoft\BOOT

# Deletes the "Fonts" folder
del Fonts
