 $interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)
 $DnsServer = (Get-DnsClientServerAddress -InterfaceIndex $interface -AddressFamily IPv4 | Select-Object -ExpandProperty ServerAddresses)

Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses (”10.14.180.2”)
gpupdate /force
Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ($DnsServer)
Start-Sleep 1

#$kb = (Get-HotFix | Select-Object HotFixID | Where-Object { $_.HotFixId.ToUpper().StartsWith("KB5008880") } | ForEach-Object { Write-Output "$($_.HotFixId)" })
#wusa /uninstall /$kb 
#Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

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
Restart-Computer -Force
