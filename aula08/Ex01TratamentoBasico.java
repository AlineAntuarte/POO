import java.util.Scanner;

/**
 * AULA 08 — Exercício 1: try/catch básico
 *
 * Implemente um programa que:
 *
 * 1. Lê dois números do usuário e divide o primeiro pelo segundo.
 *    - Trate ArithmeticException (divisão por zero)
 *    - Trate NumberFormatException (usuário digitou texto)
 *    - Use finally para imprimir "Operação concluída"
 *
 * 2. Lê uma posição de um array fixo: {10, 20, 30, 40, 50}
 *    - Trate ArrayIndexOutOfBoundsException
 *    - Informe o usuário do intervalo válido
 *
 * 3. Lê uma String e tenta convertê-la para int com Integer.parseInt()
 *    - Trate a exceção apropriada com mensagem amigável
 *
 * ATENÇÃO: os blocos catch devem ter mensagens úteis para o usuário,
 * não apenas imprimir e.getMessage() diretamente.
 */
public class Ex01TratamentoBasico {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // --- Parte 1: Divisão ---
        System.out.println("=== Divisão ===");
        // TODO

        // --- Parte 2: Array ---
        System.out.println("\n=== Acesso a Array ===");
        int[] numeros = {10, 20, 30, 40, 50};
        // TODO

        // --- Parte 3: Conversão ---
        System.out.println("\n=== Conversão String → int ===");
        // TODO

        sc.close();
    }
}
