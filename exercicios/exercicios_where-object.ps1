#Exercício 1: Use o Where-Object para filtrar os processos em execução no sistema e exibir apenas os processos iniciados pelo usuário atual.

    Get-Process -IncludeUserName | Where-Object Username -Like "*$env:USERNAME*"



#Exercício 2: Filtrar os eventos do log de eventos do sistema para exibir apenas os eventos de erro.

    Get-EventLog system | Where-Object {$_.EntryType -eq "Error"}



#Exercício 3: Use o Where-Object para encontrar e exibir apenas os arquivos com a extensão ".txt" na pasta "C:\Windows\System32".
    
    Get-ChildItem C:\Windows\System32 | Where-Object Name -like "*.txt"



#Exercício 4: Filtrar os serviços do sistema para exibir apenas os serviços que estão em execução.

    Get-Service | where status -eq "Running"


