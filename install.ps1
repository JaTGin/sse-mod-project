function Write-Path {
    $path | Out-File -FilePath path.txt
}

function Read-Path {
    Write-Host "here"
    if (Get-Content .\path.txt) {
        Write-Host "if passed"
        $path = Get-Content .\path.txt
        Write-Host $path
    }
}

function Install-Mod {
    Copy-Item -Path .\installation\* -Destination $path -PassThru
}

function Update-Mod {
    Copy-Item -Path $path\the-sun-may-rise-again.esp -Destination .\installation\* -PassThru
    Copy-Item -Path $path\scripts\* -Destination .\installation\* -PassThru
}

function Install-Scripts {
    #TBD when we start scripting
}

Read-Path
if ($path) {
    Install-Mod
}
else {
    Write-Host "SEARCHING FOR DIRECTORY... "
    if (gci -Recurse -Filter "Skyrim Special Edition" -Directory -ErrorAction SilentlyContinue -Path "C:\Program Files (x86)\Steam\steamapps\common") {
        $path = "C:\Program Files (x86)\Steam\steamapps\common\Skyrim Special Edition\Data"
        Write-Host "FOUND PATH AT " $path
        Write-Path
    }
    else {
        if (gci -Recurse -Filter "Skyrim Special Edition" -Directory -ErrorAction SilentlyContinue -Path "D:\SteamLibrary\steamapps\common") {
            $path = "D:\SteamLibrary\steamapps\common\Skyrim Special Edition\Data"
            Write-Host "FOUND PATH AT " $path
            Write-Path
        }
        else {
            Write-Host "PATH SEARCH FAILED- TALK TO JAKE ABOUT IT"
        }
    }
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
