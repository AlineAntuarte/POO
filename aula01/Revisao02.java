/**
 * AULA 01 — Exercício 2: Revisão de arrays e laços
 *
 * 1. Crie um array de 5 inteiros e preencha com valores à sua escolha.
 * 2. Calcule e imprima: soma, média, maior e menor valor.
 * 3. DESAFIO: inverta o array e imprima-o invertido sem usar outro array.
 *
 * TODO: implemente abaixo.
 */
public class Revisao02 {
    public static void main(String[] args) {
        int[] numeros = { 42, 7, 19, 88, 3 };
        int[] teste = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 };

        int soma = 0;
        int media = 0;
        int maior = 0;
        int menor = 0;
        int temp = 0;

        // Soma
        for (int i = 0; i < numeros.length; i++) {
            soma = soma + numeros[i];
            if (i == (numeros.length - 1)) {
                System.out.println("A soma é: " + soma);
            }
        }
        // Média
        for (int i = 0; i < numeros.length; i++) {
            soma = soma + numeros[i];
            if (i == (numeros.length - 1)) {
                media = (soma / (numeros.length - 1));
                System.out.println("A média é: " + media);
            }
        }

        // Maior e Menor
        for (int i = 0; i < numeros.length; i++) {
            if (numeros[i] > maior) {
                maior = numeros[i];
            }

            if (numeros[i] <= numeros[i]) {
                menor = numeros[i];
            }

            if (i == (numeros.length - 1)) {
                System.out.println("O maior número é: " + maior);
                System.out.println("O menor número é: " + menor);
            }
        }
        
        int inicio = 0;
        int fim = (teste.length - 1);
        System.out.println("====== INICIANDO ======");
        while (inicio < fim) {
            temp = teste[inicio];
            teste[inicio] = teste[fim];
            teste[fim] = temp;
            inicio++;
            fim--;
        }

        for (int i = 0; i < teste.length; i++) {
            System.out.println("Array = " + teste[i]);
        }

        // TODO: calcule soma
        // TODO: calcule média
        // TODO: encontre maior e menor
        // TODO: inverta o array no lugar (use troca com variável temporária)
    }
}
