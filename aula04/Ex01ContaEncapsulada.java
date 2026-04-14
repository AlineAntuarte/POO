/**
 * AULA 04 — Exercício 1: Encapsulamento da Conta
 *
 * Crie a classe Conta com TODOS os atributos private.
 * Implemente getters para: titular, agencia, numConta, saldo
 * NÃO implemente getSenha() — crie autenticar(String senha) em vez disso.
 * Implemente setters APENAS para: titular, agencia
 * (saldo só pode mudar via depositar/sacar)
 *
 * Regras de negócio nos setters/métodos:
 *   - agencia não pode ser null ou vazia
 *   - depositar: valor deve ser > 0
 *   - sacar: valor deve ser > 0 e <= saldo
 *   - autenticar: compara a senha interna sem expô-la
 *
 * No main: demonstre que não é possível acessar conta.saldo diretamente
 * (comente a linha e explique por que dá erro de compilação).
 */
public class Ex01ContaEncapsulada {

    // Defina a classe Conta aqui (ou em arquivo separado)
    static class Conta {
        // TODO: atributos private
        // TODO: construtor
        // TODO: getters e setters com validação
        // TODO: depositar, sacar, verificarSaldo, autenticar
    }

    public static void main(String[] args) {
        Conta c = new Conta("Maria", "0042", "12345", "senha123", 2000.0);

        // TODO: teste getter
        System.out.println("Titular: " + c.getTitular());

        // TODO: tente acessar c.saldo diretamente — o que acontece?
        // System.out.println(c.saldo); // descomente e compile para ver o erro

        // TODO: autenticação
        System.out.println("Auth correta: " + c.autenticar("senha123"));
        System.out.println("Auth errada:  " + c.autenticar("errada"));

        // TODO: depósito e saque com validação
        c.depositar(500);
        System.out.println("Saldo após depósito: " + c.verificarSaldo());
        c.sacar(300);
        System.out.println("Saldo após saque: " + c.verificarSaldo());
        c.sacar(9999); // deve mostrar mensagem de erro
    }
}
