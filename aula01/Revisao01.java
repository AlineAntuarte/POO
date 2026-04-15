import java.util.Scanner;

/**
 * AULA 01 — Exercício 1: Revisão de condicionais
 *
 * Escreva um programa que:
 * 1. Leia a nota de um aluno (0 a 10)
 * 2. Imprima a situação: Aprovado (>=7), Recuperação (>=5), Reprovado (<5)
 * 3. Repita até o usuário digitar -1
 *
 * TODO: implemente o corpo do main abaixo.
 */
public class Revisao01 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("=== Verificador de notas ===");
        System.out.print("=== Insira uma nota: ");

        // TODO: use um loop 'while' ou 'do-while'
        // Leia a nota com sc.nextDouble()
        // Se a nota == -1, saia do loop
        // Caso contrário, imprima a situação

        double nota = sc.nextDouble();
        boolean chave = true;

        System.out.println("Sua nota é: " + nota);

        while (chave) {
            if (nota < 0 || nota > 10) {
                chave = false;
            } else {
                if (nota < 6) {
                    System.out.println("Você não está aprovado!");
                    chave = false;
                } else {
                    System.out.println("Você está aprovado!");
                    chave = false;
                }
            }
        }

        System.out.println("Encerrando.");
        sc.close();
    }
}
