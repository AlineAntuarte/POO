import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * AULA 03 — Exercício 1: Construtores + this
 *
 * Implemente a classe Pessoa com construtor obrigatório:
 * Atributos: nome (String), altura (double), idade (int), peso (double)
 * Construtor: Pessoa(String nome, double altura, int idade, double peso)
 * Métodos:
 *   - calcularIMC(): peso / (altura * altura)
 *   - ehMaiorDeIdade(): retorna true se idade >= 18
 *   - toString(): representação completa
 *
 * No main:
 * 1. Cadastre 4 pessoas via Scanner
 * 2. Adicione-as em uma List<Pessoa>
 * 3. Percorra a lista e imprima quem é maior de idade e seu IMC
 */
class Pessoa {
    // TODO: atributos private

    // TODO: construtor com todos os parâmetros (use this.x = x)

    // TODO: calcularIMC()
    // TODO: ehMaiorDeIdade()
    // TODO: toString()
}

public class Ex01Pessoa {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<Pessoa> pessoas = new ArrayList<>();

        for (int i = 1; i <= 4; i++) {
            System.out.println("--- Pessoa " + i + " ---");
            System.out.print("Nome: ");
            String nome = sc.nextLine();
            System.out.print("Altura (ex: 1.75): ");
            double altura = sc.nextDouble();
            System.out.print("Idade: ");
            int idade = sc.nextInt();
            System.out.print("Peso (kg): ");
            double peso = sc.nextDouble();
            sc.nextLine(); // limpar buffer

            // TODO: crie a Pessoa e adicione à lista
        }

        System.out.println("\n=== Maiores de Idade ===");
        // TODO: percorra a lista e filtre/imprima
        sc.close();
    }
}
