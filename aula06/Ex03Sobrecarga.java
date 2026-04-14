/**
 * AULA 06 — Exercício 3: Sobrecarga (overloading)
 *
 * Crie uma classe Calculadora com os seguintes métodos sobrecarregados:
 *
 * somar(int a, int b): int
 * somar(double a, double b): double
 * somar(int a, int b, int c): int
 * somar(String a, String b): String  ← concatena
 *
 * multiplicar(int a, int b): int
 * multiplicar(double a, double b): double
 * multiplicar(int a, int b, int c): int
 *
 * imprimir(int valor): void
 * imprimir(double valor): void
 * imprimir(String valor): void
 * imprimir(boolean valor): void
 *
 * No main: chame cada versão e observe qual é chamada.
 * REFLEXÃO: escreva um comentário explicando a diferença entre
 * sobrecarga (overloading) e sobrescrita (overriding).
 */
public class Ex03Sobrecarga {

    // TODO: classe Calculadora aqui (pode ser estática interna ou arquivo separado)
    static class Calculadora {
        // TODO
    }

    public static void main(String[] args) {
        Calculadora calc = new Calculadora();

        // TODO: demonstre cada versão sobrecarregada
        // Ex:
        // System.out.println(calc.somar(2, 3));          // int version
        // System.out.println(calc.somar(2.5, 3.7));      // double version
        // System.out.println(calc.somar("Olá", " Mundo")); // String version
    }
}
