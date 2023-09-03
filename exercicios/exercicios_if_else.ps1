#Exercício 1: Verificar se um número é positivo, negativo ou zero.
    [int]$num = Read-Host "Digite um numero: "
    if ($num -eq 0) {Write-Host "O numero $num é zero"}
    
    elseif ($num -lt 0) {Write-Host O numero é negativo}

    else {Write-Host O numero $num é postivo}




#Exercício 2: Verificar se um número é par ou ímpar.
    [int]$num = Read-Host "Digite um numero: "
    $par = $num % 2
    if ($par -eq 0) { Write-Host O numero é par }
    else { Write-Host é impar }



#Exercício 3: Verificar a faixa etária com base na idade.
    [int]$idade = Read-Host "Qual a sua idade? "

    if ($idade -lt 11 -or $idade -eq 11) {Write-Host "Criança"}
    elseif ($idade -gt 11 -and $idade -lt 18) {Write-Host "Adolescente"}
    elseif ($idade -gt 18 -or $idade -eq 18) {Write-Host "adulto"}



#Exercício 4: Verificar se uma letra é uma vogal ou uma consoante.

$vogais = @('a','e','i','o','u')

$letra = Read-Host "Digite uma letra: "

if ($vogais.Contains($letra)) {
    Write-Host "A letra $letra é vogal"}
else {Write-Host "a letra $letra Não é vogal"}