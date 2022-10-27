
cls 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) > $null

#Instala WPS
cls
echo "INSTALANDO WPS (SUBSTITUTO DO MICROSOFT OFFICE)"
choco install -y --force wps-office-free > $null
cls
echo "ACABEI, OBRIGADO POR ESPERAR"
sleep 5
Stop-Process -Name poweshell