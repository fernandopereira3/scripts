Clear-host
Write-Output "
 
 
            OLA! VOU INSTALAR ALGUNS PROGRAMAS PARA VOCE ESTE PROCESSO DEMORA APROXIMADAMENTE 30 MIN.
            VOCE PODE FAZER OUTRAS COISAS MAS ESTA MAQUINA PROVAVELMENTE VAI FICAR MAIS LENTA.

                                                                                            OBRIGADO!        
"
################ PROGRAMAS BASICOS #################################
# ATUALIZADOR DO WINDOWS
Clear-host
Install-PackageProvider -Force -Confirm:$False -Name NuGet -Verbose
Install-Module -Force -Confirm:$False PSWindowsUpdate
#INSTALL WINGET
Install-PackageProvider -Force -Confirm:$False -Name PackageManagement -Verbose
Install-PackageProvider -Force -Confirm:$False -Name Cobalt -Verbose
Install-PackageProvider -Force -Confirm:$False -Name winget -Verbose
# Instalar o Cholatey
Clear-host 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#####################################################################

# Instalar REALVNC
Clear-host
Write-Output "INSTALANDO O REAL VNC..." 
choco install -y --force vnc-connect
Write-Output "FINALIZADO"
