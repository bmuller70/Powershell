# Define a pasta de origem e a pasta de destino para o backup
$origem = Read-Host "Indique o caminho da pasta de origem dos arquivos: "
$destino = Read-Host "Indique o caminho da pasta de backup: "
$tecnico = Read-Host "Tecnico resposavel por essa ativação: " 
$chamado = Read-Host "numero do seu chamado: "

#$origem = "C:\Users\bruno.muller\Desktop\monitor\arquivo"
#$destino = "C:\Users\bruno.muller\desktop\monitor\backup"

# Cria um objeto para monitorar alterações na pasta de origem
$monitor = New-Object System.IO.FileSystemWatcher
$monitor.Path = $origem
$monitor.IncludeSubdirectories = $true
$monitor.EnableRaisingEvents = $true

# Função para executar o backup de um arquivo modificado
function BackupArquivo {
    param($caminhoCompleto)

    $diretorioRelativo = (Split-Path -Path $caminhoCompleto -Parent).Substring($origem.Length)
    $destinoCompleto = Join-Path -Path $destino -ChildPath $diretorioRelativo

    # Cria o diretório de destino, se ainda não existir
    $diretorioDestino = Split-Path -Path $destinoCompleto -Parent
    if (!(Test-Path -Path $diretorioDestino)) {
        New-Item -ItemType Directory -Path $diretorioDestino -Force | Out-Null
    }

    # Copia o arquivo modificado para o destino
    Copy-Item -Path $caminhoCompleto -Destination $destinoCompleto -Force
    Write-Host "Backup realizado: $caminhoCompleto -> $destinoCompleto"

    # Registra o movimento do arquivo no log
    $logMensagem = "$(Get-Date) - Backup realizado: $caminhoCompleto -> $destinoCompleto"
    Add-Content -Path ".\log.txt" -Value $logMensagem
}

# Evento para monitorar a criação e modificação de arquivos
Register-ObjectEvent -InputObject $monitor -EventName Created -Action {
    Write-Host $EventArgs.FullPath
    BackupArquivo $EventArgs.FullPath
}

Register-ObjectEvent -InputObject $monitor -EventName Changed -Action {
    Write-Host $EventArgs.FullPath
    BackupArquivo $EventArgs.FullPath
}

Write-Host "Iniciando o backup em tempo real..."
Write-Host "Solução paliativa do chamado XXX-XXX"
Write-Host "implementado em" $(Get-Date)
Write-Host "Tecnico responsavel" $tecnico
Write-Host "ação referente ao chamado " $chamado
Add-Content -Path ".\log.txt" -Value "Tecnico responsavel $tecnico ação referente ao chamado $chamado data: $(Get-Date)"


# Loop infinito com tempo de espera
while ($true) {
    Start-Sleep -Seconds 1
}

# Remove os eventos registrados
$monitor.Dispose()
