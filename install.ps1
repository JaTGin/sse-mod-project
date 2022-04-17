Write-Host "Extracting PSCs..."
Copy-Item -Path ../Source/Scripts/TIF__02011AFF.psc -Destination .\installation\SrcScripts\ -PassThru
Copy-Item -Path ../Source/Scripts/TIF__02011B01.psc -Destination .\installation\SrcScripts\ -PassThru
Copy-Item -Path ../Source/Scripts/TIF__02011B06.psc -Destination .\installation\SrcScripts\ -PassThru
Copy-Item -Path ../Source/Scripts/TIF__0201207C.psc -Destination .\installation\SrcScripts\ -PassThru
Copy-Item -Path ../Source/Scripts/TIF__02012082.psc -Destination .\installation\SrcScripts\ -PassThru
Copy-Item -Path ../Source/Scripts/TIF__02012092.psc -Destination .\installation\SrcScripts\ -PassThru
Write-Host "PSCs Extracted."
