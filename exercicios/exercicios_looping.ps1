#Exercício 1: Escreva um loop que imprima os números de 1 a 10.

    for ($num = 1;$num -le 10; $num++) {Write-Host "Contando $num"}



#Exercício 2: Escreva um loop que calcule a soma dos números de 1 a 100.

    $soma = 0
    foreach ( $num in 1..100) {
        $soma += $num
        }
    Write-Host $soma
    





#Exercício 3: Escreva um loop que imprima os números pares de 0 a 20.

    for ($num = 0;$num -le 20; $num++) { if ($num%2 -eq 0) {Write-Host "par $num"}} 



#Exercício 4: Escreva um loop que solicite ao usuário para digitar um número e pare quando o número digitado for negativo.


    while($num -ge 0) {[int]$num = Read-Host "digite um numero: "}
    Write-Host "numero negativo, looping encerrado"


#Exercício 5: Escreva um loop que leia uma lista de nomes do usuário e pare quando o usuário digitar "sair".

    while($nome -ne "sair") {$nome = Read-Host "Digite um nome: "}
    Write-Host "você escolheu sair"