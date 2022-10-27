cls

    $op = Read-Host "O QUE VOCE DESEJA ?

    1 - Configurações
    2 - Inserir o computdor ao Dominio cpppac.com
    3 - Adobe Reader (LEITOR DE PDF)
    4 - SIA & SISCAR
    5 - Instalar Somente o Microsoft Office
    6 - Instalador Completo
    7 - Sair
    "

    switch ($op)
    {
       1 {choco; Break}
       2 {dominio; Break}
       3 {adobe; Break}
       4 {siscar; Break}
       6 {invoke-expression -Command \\10.14.180.5\programas\scripts\WINDOWS\InstaladorOffice.ps1; Break}
       7 {invoke-expression -Command \\10.14.180.5\programas\scripts\WINDOWS\InstaladorCompleto.ps1; Break}
       8 {exit}
    }


function choco {
# Instalar o Cholatey
cls 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null
menu
};

function adobe {
cls
echo "INSTALANDO O ADOBE READER..."
choco install -y --force adobereader > $null
cls
echo "CONCLUIDO..."
menu
};

function dominio{
$interface = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.InterfaceAlias -match 'Ethernet' } |Select-Object -ExpandProperty InterfaceIndex)
cls
echo "Oi! Vou configurar este PC para o Dominio cpppac.com"
sleep 5
Set-DnsClientServerAddress -InterfaceIndex $interface -ServerAddresses (”10.14.180.2”)
cls
echo "DNS alterado"
sleep 3
winrm quickconfig -force
Rename-Computer
Add-Computer -DomainName cpppac.com
cls
echo "PROCESSEDIMENTO FINALIZADO O COMPUTADOR SERA REINICIALIZADO EM 5 SEGUNDOS
POR FAVOR CONFIRME A CONFIGURAÇÃO DE RENAME, É PRUDENTE FAZER ESSA CONFIGURAÇÃO MANUALMENTE"
sleep 5
Restart-Computer
};

function siscar{
cls
echo "INSTALANDO...."
cp -Force -R \\10.14.180.5\programas\beto C:\
cp -Force -R \\10.14.180.5\programas\sia C:\ 
New-Item -ItemType SymbolicLink -Path "$Home\Desktop\" -Name "Siscar" -Value "C:\beto\SisCar\SisCar.exe"
menu
};