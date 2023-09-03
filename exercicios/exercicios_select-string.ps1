#Exercício 1: Use o Select-String para pesquisar por uma palavra específica em todos os arquivos de texto presentes na pasta "C:\Windows".

    Get-ChildItem C:\Windows | Where-Object {$_.Name -like "*.txt"}


#Exercício 2: Pesquise por todas as ocorrências de um evento específico nos logs de eventos do sistema.

        Get-EventLog System > logs.txt
        Get-Content .\logs.txt | Select-String "O processamento da Política de Grupo falhou devido à falta de conectividade de rede com"

 

#Exercício 3: Use o Select-String para encontrar e exibir apenas as linhas de código-fonte que contêm uma função específica em um diretório de desenvolvimento.

    Feito dentro da pasta de exercicios
    Get-Content * | Select-String "Get-*"


#Exercício 4: Pesquise por uma determinada mensagem de erro em todos os arquivos de log de erro do sistema.
   foreach ($log in Get-eventLog -List) {if ($log.Entries.Count -gt 0) {Get-EventLog $log.Log > logs.txt}}
   Select-String -Pattern "Service stopped" .\logs.txt

