import java.util.ArrayList;
import java.util.List;

/**
 * AULA 05 — Exercício 2: Hierarquia de Funcionários
 *
 * Hierarquia:
 *         Funcionario
 *         - nome: String
 *         - cpf: String
 *         - salarioBase: double
 *         + calcularSalario(): double  ← retorna salarioBase
 *         + imprimirHolerite(): void
 *              │
 *    ┌─────────┼──────────────┐
 *  Gerente  Estagiario     Vendedor
 *  + bonus   + bolsaAux     + comissao: double
 *            (sem salarioBase) + metaVendas: double
 *                             calcularSalario: base + comissao
 *
 * Regra: Estagiario tem salário = bolsaAuxilio (sem base)
 *        Gerente tem salário = base + bonus
 *        Vendedor tem salário = base + comissao
 *
 * No main:
 *   1. Crie uma List<Funcionario> com todos os tipos
 *   2. Calcule a folha de pagamento total
 *   3. Encontre e imprima quem tem o maior salário
 */
class Funcionario {
    protected String nome;
    protected String cpf;
    protected double salarioBase;

    public Funcionario(String nome, String cpf, double salarioBase) {
        this.nome = nome;
        this.cpf = cpf;
        this.salarioBase = salarioBase;
    }

    public double calcularSalario() {
        return salarioBase;
    }

    public void imprimirHolerite() {
        System.out.println("=== Holerite ===");
        System.out.println("Nome: " + nome);
        System.out.println("CPF: " + cpf);
        System.out.printf("Salário: R$ %.2f%n", calcularSalario());
    }
}

// TODO: class Gerente extends Funcionario
// TODO: class Estagiario extends Funcionario
// TODO: class Vendedor extends Funcionario

public class Ex02Funcionario {
    public static void main(String[] args) {
        List<Funcionario> equipe = new ArrayList<>();

        // TODO: adicione funcionários de tipos diferentes

        double folha = 0;
        for (Funcionario f : equipe) {
            f.imprimirHolerite();
            folha += f.calcularSalario();
            System.out.println();
        }

        System.out.printf("Folha total: R$ %.2f%n", folha);

        // TODO: encontre o maior salário
    }
}
