import java.util.ArrayList;
import java.util.List;

/**
 * AULA 06 — Exercício 2: Sistema Bancário Polimórfico
 *
 * Hierarquia:
 *         ContaBase
 *         - titular, numConta: String
 *         - saldo: double
 *         + depositar(double)
 *         + sacar(double): boolean   ← retorna false se saldo insuficiente
 *         + getSaldo(): double
 *         + toString()
 *              │
 *    ┌──────────────────────┐
 *  ContaCorrente          ContaPoupanca
 *  - limiteChequeEspecial   - taxaRendimento (ex: 0.005 = 0.5% ao mês)
 *  sacar: pode usar limite  + renderJuros(): saldo *= (1 + taxa)
 *
 * No main:
 *   1. Crie List<ContaBase> com contas dos dois tipos
 *   2. Simule um mês: faça depósitos e saques em todas
 *   3. Aplique renderJuros() apenas nas ContaPoupanca (use instanceof)
 *   4. Imprima o extrato de todas as contas
 */
public class Ex02Banco {
    // TODO: ContaBase, ContaCorrente, ContaPoupanca

    public static void main(String[] args) {
        List<Object> contas = new ArrayList<>(); // troque Object por ContaBase quando implementar

        // TODO
    }
}
