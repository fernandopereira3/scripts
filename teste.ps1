$interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)
$DnsServer = (Get-DnsClientServerAddress -InterfaceIndex $interface -AddressFamily IPv4 | Select-Object -ExpandProperty ServerAddresses)
cls
echo 'Adicionando DNS .2'
Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ('10.14.180.2')

Get-NetIPConfiguration
sleep 2

cls
echo 'Aplicando GPUPDATE...'
    gpupdate /force
    
cls
echo 'retornando ao original...'
 Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ($DnsServer)

Get-NetIPConfiguration

 #$KB = (Get-HotFix | Select-Object HotFixID | Where-Object { $_.HotFixId.Contains("KB5008880") } | ForEach-Object { Write-Output "$($_.HotFixId)" })
#wusa /uninstall /$KB
