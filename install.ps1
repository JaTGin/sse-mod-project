function Install-Mod {
    Copy-Item -Path .\installation\* -Destination ../ -PassThru
}

function Update-Mod {
    Copy-Item -Path ../the-sun-may-rise-again.esp -Destination .\installation\ -PassThru
    Copy-Item -Path ../111test.txt -Destination .\installation\ -PassThru
}

function Install-Scripts {
    #TBD when we start scripting
}

$installyn = Read-Host "Install mod to Skyrim folder? Y/N"
if ("Y" -eq $installyn) {
    Write-Host "Installing... "
    Install-Mod
}
else {
    $installyn = Read-Host "Pull data from Skyrim folder? Y/N"
    if ("Y" -eq $installyn) {
        Write-Host "Updating Repo... "
        Update-Mod
    }
}
