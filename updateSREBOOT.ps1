# ATUALIZADOR DO WINDOWS
cls
Install-PackageProvider -Force -Confirm:$False -Name NuGet 
Install-Module -Force -Confirm:$False PSWindowsUpdate

#INSTALL WINGET
Install-PackageProvider -Force -Confirm:$False -Name PackageManagement
Install-PackageProvider -Force -Confirm:$False -Name Cobalt 
Install-PackageProvider -Force -Confirm:$False -Name winget

# Instalar o Cholatey
cls 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null

Install-PackageProvider -Force -Confirm:$False -Name NuGet 
Install-Module -Force -Confirm:$False PSWindowsUpdate
Clear-Host
choco upgrade -y all
Start-Sleep 10
Clear-Host
winrm qc -force 
Start-Sleep 10
Clear-Host
Get-WindowsUpdate -Install -Confirm:$False -ForceInstall -IgnoreReboot
Start-Sleep 10
Clear-Host 
winget upgrade --all
Start-Sleep 10
Clear-Host
Write-Output "Atualização Finalizada..."