# Instalar o Cholatey
cls
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null

# Instalar Office
echo "INSTALANDO O MICROSOFT OFFICE, CALMA, ESTE PROCESSO É DEMORADO MESMO!"
choco install --force -y office2019proplus --params '/Language:pt-BR'
cls
echo "Finalizado"
echo "O computador vai reiniciar em 10 segundos..."
Restart-Computer
sleep 5
