cls
echo "
 
 
            OLA! VOU INSTALAR ALGUNS PROGRAMAS PARA VOCE ESTE PROCESSO DEMORA APROXIMADAMENTE 30 MIN.
            VOCE PODE FAZER OUTRAS COISAS MAS ESTA MAQUINA PROVAVELMENTE VAI FICAR MAIS LENTA.

                                                                                            OBRIGADO!
 "
sleep 10

Out-Null

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

# Winrar
cls
echo "INSTALANDO O WINRAR..."
choco install -y --force winrar > $null
cls
echo "CONCLUIDO..."

# Brave Browser
cls 
echo "INSTALANDO BRAVE..."
choco install -y --force brave > $null
cls 
echo "CONCLUIDO..."

# Instalar Skype
cls
echo "INSTALANDO O SKYPE..."
choco install -y --force skype > $null
cls
echo "CONCLUIDO..."

#Instalar TeamViewer
cls 
echo "INSTALANDO TEAMVIEWER..."
choco install -y --force teamviewer > $null
cls 
echo "CONCLUIDO..."

# Visual Studio
cls
echo "INSTALANDO VISUAL STUDIO...."
choco install -y --force vscode > $null 
cls
echo "CONCLUIDO..."

# Adobe Reader
cls
echo "INSTALANDO O ADOBE READER..."
choco install -y --force adobereader > $null
cls
echo "CONCLUIDO..."

# Windows Admin Center
cls
echo "INSTALANDO O Windows Admin Center..."
winget install Microsoft.WindowsAdminCenter
cls
echo "CONCLUIDO..."

# VNC Viewer
cls
echo "INSTALANDO O VNC Viewer..."
winget install RealVNC.VNCViewer
cls
echo "CONCLUIDO..."

# VNC Server
cls
echo "INSTALANDO O VNC Server..."
winget install RealVNC.VNCServer
cls
echo "CONCLUIDO..."

# MICROSOFT OFFICE
cls 
echo "INSTALANDO O MICROSOFT OFFICE..."
choco install --force -y office2019proplus --params '/Language:pt-BR' > $null
cls 
echo "CONCLUIDO..."

echo "



                FINALIZADO



"
#sleep 5
#Restart-Computer