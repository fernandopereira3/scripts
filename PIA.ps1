$nome = [System.Net.Dns]::GetHostName()

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
#### INSTALA SIA E SISCAR #####
Clear-host
Copy-Item -Force -R \\10.14.180.204\programas\beto C:\
Copy-Item -Force -R \\10.14.180.204\programas\sia C:\ 
New-Item -ItemType SymbolicLink -Path "$Home\Desktop\" -Name "Siscar" -Value "C:\beto\SisCar\SisCar.exe"
New-Item -ItemType SymbolicLink -Path "$Home\Desktop\" -Name "SIA" -Value "C:\sia\SIA.exe"
#####################################################################
if ($nome -like '*administrativo*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*financas*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*infra*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*pessoal*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto,vou reniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*peculio*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Start-Sleep 5
    Write-Output 'Pronto, vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*cimic*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto, vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*cpd*')
{
    Clear-Host
    Write-Output (-join('Oi chefe! ', $nome, ' eh o seu PC neh, vishi, vou fazer o meu melhor!'))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('PRONTO! OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
    winget install Microsoft.WindowsAdminCenter
    Clear-Host
    choco install -y --force vscode
    Clear-Host
    choco install -y --force teamviewer
    Clear-Host
    choco install -y --force brave
    Clear-Host
    Write-Output 'PRONTO!'

}if ($nome -like '*judiciaria*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto, vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*sindicancia*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto, vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*supervisao*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto ,vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*producao*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*enfermaria*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto ,vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*cras*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto ,vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*seguranca*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Clear-Host
   choco install -y --force jre8
    Clear-Host
    Write-Output 'Pronto, vou reiniciar o PC em 10 segundos'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*inclusao*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*rol*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*chefia*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*portaria*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*subportaria*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*aevp*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*manutencao*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}if ($nome -like '*controle*')
{
    Clear-Host
    Write-Output (-join('Ola, se esse PC eh o  ', $nome))
    Start-Sleep 5
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS VAO SER INSTALADOS EM', $nome, 'ISSO VAI DEMORAR...'))
    Start-Sleep 5
    Clear-Host
    choco install -y --force vnc-connect
    Clear-Host
    choco install -y --force winrar
    Clear-Host
    choco install -y --force googlechrome
    Clear-Host
    choco install -y --force skype
    Clear-Host
    choco install -y --force adobereader
    Clear-Host
    choco install -y --force office2019proplus --params '/Language:pt-BR'
    Clear-Host
    #choco install -y --force \\10.14.180.204\programas\.choco_package\kfa\kfa.19.0.0.1088.nupkg    
    Clear-Host
    Write-Output (-join('OS PROGRAMAS BASICOS PARA ', $nome, ' FORAM INSTALADOS AGORA OS ARQUIVOS ESPECIFICOS...'))
    Start-Sleep 5
    Clear-Host
    Write-Output 'Olha! Nao ha programas, vou reiniciar o PC em 10 segundos, obrigado'
    Start-Sleep 10
    Restart-Computer
}