$interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)
cls
echo "Oi! Vou configurar este PC para o Dominio cpppac.com"
sleep 5
#########SET DNS PARA .2################
Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ("10.14.180.2")
cls
echo "DNS alterado"
sleep 3
winrm quickconfig -force
############RENOMEAR PC############################
Rename-Computer
###########ADICIONAR PC AO DOMINIO##############################
Add-Computer -DomainName cpppac.com
cls
echo "PROCESSEDIMENTO FINALIZADO O COMPUTADOR SERA REINICIALIZADO EM 5 SEGUNDOS
POR FAVOR CONFIRME A CONFIGURA��O DE RENAME, � PRUDENTE FAZER ESSA CONFIGURA��O MANUALMENTE"
sleep 5
Restart-Computer




#wimrm quickconfig -force
#Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses ("10.1.6.222",�192.168.10.10�,�10.14.180.2�,�10.14.180.10�)
#Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" >> \\10.14.180.5\programas\textos\
#Clear-Variable -Name MyVariable


