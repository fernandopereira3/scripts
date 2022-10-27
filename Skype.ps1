# Instalar o Cholatey
cls 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null

# Instalar Skype
cls
echo "INSTALANDO O SKYPE..."
choco install -y --force skype > $null
cls
echo "ACABEI, OBRIGADO POR ESPERAR"
sleep 5
Stop-Process -Name poweshell