# Guia de Resolução

O que você fez no seu código foi criar um "deslocamento" (shift). Você está empurrando todo mundo uma casa para a esquerda. Além de não inverter o array todo, aquele `numeros[i + 1]` (cuidado com a letra `l` ali) vai dar dor de cabeça: quando o loop chegar na última posição (índice 4), ele vai tentar acessar o índice 5, que não existe, gerando o famoso erro `ArrayIndexOutOfBoundsException`.

Para inverter um array **no próprio lugar** (in-place), a técnica clássica é trocar as "pontas" e ir caminhando para o centro.

Imagine o array: `{ 42, 7, 19, 88, 3 }`

1. Trocamos o 1º (42) com o último (3). O array fica: `{ 3, 7, 19, 88, 42 }`
2. Trocamos o 2º (7) com o penúltimo (88). O array fica: `{ 3, 88, 19, 7, 42 }`
3. O elemento do meio (19) não precisa mudar de lugar. Acabou!

Aqui estão as duas formas mais didáticas de implementar essa lógica em Java:

## Forma 1: Usando `while` com "Dois Ponteiros" (A mais visual)

Nesta abordagem, criamos duas variáveis: uma que olha para o começo do array e outra que olha para o final. Elas vão trocando de lugar e andando em direção ao centro.

```java
int[] numeros = { 42, 7, 19, 88, 3 };

int inicio = 0;                     // Aponta para o índice do primeiro elemento
int fim = numeros.length - 1;       // Aponta para o índice do último elemento

while (inicio < fim) {              // Enquanto os ponteiros não se cruzarem no meio
    // 1. Guarda o valor do começo no temp
    int temp = numeros[inicio]; 
    
    // 2. Coloca o valor do fim lá no começo
    numeros[inicio] = numeros[fim]; 
    
    // 3. Coloca o valor guardado (temp) lá no fim
    numeros[fim] = temp; 
    
    // 4. Caminha com os ponteiros para a próxima troca
    inicio++; // Anda uma casa pra frente
    fim--;    // Anda uma casa pra trás
}

// Imprimindo para testar
for (int num : numeros) {
    System.out.print(num + " ");
}
```

## Forma 2: Usando o `for` (A mais direta)

Se formos usar o `for`, o grande truque é: **o loop só pode ir até a metade do array**. Se você percorrer o array inteiro, você vai inverter na primeira metade e "desinverter" na segunda metade, voltando ao estado original!

```java
int[] numeros = { 42, 7, 19, 88, 3 };

// numeros.length / 2 garante que vamos parar no meio (5 / 2 = 2 trocas)
for (int i = 0; i < numeros.length / 2; i++) {
    
    // A fórmula mágica para achar o "oposto" de 'i' lá no final do array
    int indiceOposto = numeros.length - 1 - i; 

    // Fazendo a troca idêntica ao método anterior
    int temp = numeros[i];
    numeros[i] = numeros[indiceOposto];
    numeros[indiceOposto] = temp;
}

// Imprimindo para testar
for (int i = 0; i < numeros.length; i++) {
    System.out.print(numeros[i] + " ");
}
```
