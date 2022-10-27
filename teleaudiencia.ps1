# Instalar o Cholatey
cls 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null


winrm quickconfig -force 

# Instalar REALVNC
cls
echo "INSTALANDO O REAL VNC..." 
choco install -y --force vnc-connect
cls
echo "CONCLUIDO..."

# Instalar Skype
cls
echo "INSTALANDO O SKYPE..."
choco install -y --force skype
cls
echo "CONCLUIDO..."
