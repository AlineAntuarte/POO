/**
 * AULA 08 — Exercício 2: Exceções de negócio em ContaBancaria
 *
 * Reescreva a classe Conta com lançamento de exceções:
 *
 *   sacar(double valor):
 *     - lança IllegalArgumentException se valor <= 0
 *     - lança IllegalStateException("Saldo insuficiente") se valor > saldo
 *
 *   depositar(double valor):
 *     - lança IllegalArgumentException se valor <= 0
 *
 *   autenticar(String ag, String num, String senha):
 *     - lança SecurityException se as credenciais não batem
 *     (em vez de retornar false, lança a exceção)
 *
 * No main:
 *   1. Autentique com credenciais erradas e trate a SecurityException
 *   2. Tente sacar valor negativo e trate
 *   3. Tente sacar mais do que o saldo e trate
 *   4. Faça um fluxo normal (autenticar → depositar → sacar) sem exceções
 */
public class Ex02ContaComExcecoes {
    // TODO: classe Conta com throws

    public static void main(String[] args) {
        // TODO: demonstre os 4 cenários acima
    }
}
