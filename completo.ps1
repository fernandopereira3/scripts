Clear-host
Write-Output "
            OLA! VOU INSTALAR ALGUNS PROGRAMAS PARA VOCE ESTE PROCESSO DEMORA APROXIMADAMENTE UMA CARALHADADE TEMPO.
            VOCE PODE FAZER OUTRAS COISAS MAS ESTA MAQUINA PROVAVELMENTE VAI FICAR MAIS LENTA.

                                                                                            OBRIGADO!        
"
Start-Sleep 10

Out-Null
winrm qc -force
Clear-host

# ATUALIZADOR DO WINDOWS
Clear-host
Install-PackageProvider -Force -Confirm:$False -Name NuGet 
Install-Module -Force -Confirm:$False PSWindowsUpdate
#INSTALL WINGET
Install-PackageProvider -Force -Confirm:$False -Name PackageManagement
Install-PackageProvider -Force -Confirm:$False -Name Cobalt 
Install-PackageProvider -Force -Confirm:$False -Name winget
# Instalar o Cholatey
Clear-host 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Instalar REALVNC
Clear-host
Write-Output "INSTALANDO O REAL VNC..." 
choco install -y --force vnc-connect
# Winrar
Clear-host
Write-Output "INSTALANDO O WINRAR..."
choco install -y --force winrar
Clear-host
Write-Output "CONCLUIDO..."
# Microsoft Edge
Clear-host
Write-Output "INSTALANDO O MICROSOFT EDGE..."
choco install -y --force microsoft-edge
Clear-host
Write-Output "CONCLUIDO..."
# Google Chrome
Clear-host
Write-Output "INSTALANDO O GOOGLE CHROME..."
choco install -y --force googlechrome
Clear-host
Write-Output "CONCLUIDO..."
# Instalar Skype
Clear-host
Write-Output "INSTALANDO O SKYPE..."
choco install -y --force skype
Clear-host
Write-Output "CONCLUIDO..."
# Adobe Reader
Clear-host
Write-Output "INSTALANDO O ADOBE READER..."
choco install -y --force adobereader
Clear-host
Write-Output "CONCLUIDO..."
# SISCAR E SIA
Clear-host
Write-Output 'Instalando de Criando Icones SIA e SISCAR'
Copy-Item -Force -R \\10.14.180.204\programas\beto C:\
Copy-Item -Force -R \\10.14.180.204\programas\sia C:\ 
New-Item -ItemType SymbolicLink -Path "$Home\Desktop\" -Name "Siscar" -Value "C:\beto\SisCar\SisCar.exe"
New-Item -ItemType SymbolicLink -Path "$Home\Desktop\" -Name "SIA" -Value "C:\sia\SIA.exe"
# MICROSOFT OFFICE
Clear-host
Write-Output "INSTALANDO O MICROSOFT OFFICE..."
choco install -y --force office2019proplus --params '/Language:pt-BR'
Clear-host
Write-Output "CONCLUIDO..."
# KASPERSKY
Clear-host
Write-Output "
            ATENCAO A INSTALACAO DO KASPERSKY REQUER ATENCAO ESPECIAL, ELA FICARA PARADA PEDINDO AUTORIZACAO. POR FAVOR CONTINUE A INSTALACAO POR FORA!

"
Start-Sleep 10
choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg
Clear-host
Write-Output "CONCLUIDO..."
Start-Sleep 60
#########################
Clear-host
Write-Output "
            INSTALAÇÃO FINALIZADA OBRIGADO

"
Start-Sleep 5
Restart-Computer