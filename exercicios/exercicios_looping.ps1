#Exerc�cio 1: Escreva um loop que imprima os n�meros de 1 a 10.

    for ($num = 1;$num -le 10; $num++) {Write-Host "Contando $num"}



#Exerc�cio 2: Escreva um loop que calcule a soma dos n�meros de 1 a 100.

    $soma = 0
    foreach ( $num in 1..100) {
        $soma += $num
        }
    Write-Host $soma
    





#Exerc�cio 3: Escreva um loop que imprima os n�meros pares de 0 a 20.

    for ($num = 0;$num -le 20; $num++) { if ($num%2 -eq 0) {Write-Host "par $num"}} 



#Exerc�cio 4: Escreva um loop que solicite ao usu�rio para digitar um n�mero e pare quando o n�mero digitado for negativo.


    while($num -ge 0) {[int]$num = Read-Host "digite um numero: "}
    Write-Host "numero negativo, looping encerrado"


#Exerc�cio 5: Escreva um loop que leia uma lista de nomes do usu�rio e pare quando o usu�rio digitar "sair".

    while($nome -ne "sair") {$nome = Read-Host "Digite um nome: "}
    Write-Host "voc� escolheu sair"