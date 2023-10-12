##______ Author : Jérémy Diaz______## 

clear
Write-Host ' '
Write-Host 'Ce script permet de vider la partition réservée au système pour pouvoir installer Windows 11 sur un pc dont cette partition est pleine.'
Write-Host ' '

# Débute une boucle qui se executera le script uniquement si l'utilisateur répond oui, sinon le script sera annulé

do {
    Write-Host ' '
    $NAME = Read-Host -Prompt 'Pour continuer et exécuter le script, tapez oui, sinon le script sera annulé en tapant non'
    if ($NAME -eq "oui") {
        Write-Host ' '
        Write-Host "Le script est en train de s'exécuter..."
    }
    elseif ($NAME -eq "non") {
        Write-Host ' '
        Write-Host "Fr : Le script a été annulé par l'utilisateur"
        Write-Host ' '
        return
    }
    else {
        # Affiche un message d'erreur pour une réponse invalide
        Write-Host ' '
        Write-Host "Réponse invalide. Veuillez répondre avec 'oui' ou 'non'."
    }
} until ($NAME -eq "oui" -or $NAME -eq "non")
# Fin de la boucle do-while

# Obtient la politique d'exécution pour l'utilisateur courant
Get-ExecutionPolicy -Scope CurrentUser

# Monte le lecteur Y: pour la partition réservée au système
mountvol y: /s

# Accède au répertoire Y:\EFI\Microsoft\BOOT
cd Y:\EFI\Microsoft\BOOT

# Supprime le dossier "Fonts"
del Fonts