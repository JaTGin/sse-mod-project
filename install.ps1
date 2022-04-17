function Install-Mod {
    Copy-Item -Path .\installation\* -Destination ../ -PassThru
}

function Update-Mod {
    Copy-Item -Path ../the-sun-may-rise-again.esp -Destination .\installation\ -PassThru
    Write-Host "Extracting PSCs..."
    Copy-Item -Path ../Source/Scripts/TIF__02011AFF.psc -Destination .\installation\SrcScripts\ -PassThru
    Copy-Item -Path ../Source/Scripts/TIF__02011B01.psc -Destination .\installation\SrcScripts\ -PassThru
    Copy-Item -Path ../Source/Scripts/TIF__02011B06.psc -Destination .\installation\SrcScripts\ -PassThru
    Copy-Item -Path ../Source/Scripts/TIF__0201207C.psc -Destination .\installation\SrcScripts\ -PassThru
    Copy-Item -Path ../Source/Scripts/TIF__02012082.psc -Destination .\installation\SrcScripts\ -PassThru
    Copy-Item -Path ../Source/Scripts/TIF__02012092.psc -Destination .\installation\SrcScripts\ -PassThru
    Write-Host "PSCs Extracted."
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
