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
choco install -y --force winrar
cls
echo "CONCLUIDO..."

# Google Chrome
cls
echo "INSTALANDO O GOOGLE CHROME..."
choco install -y --force googlechrome
echo "CONCLUIDO..."

# MICROSOFT OFFICE
cls 
echo "INSTALANDO O MICROSOFT OFFICE..."
choco install --force -y office2019proplus --params '/Language:pt-BR'
cls 
echo "CONCLUIDO..."
cls
echo "FINALIZADO"