/**
 * AULA 08 — Exercício 3: Exceção personalizada
 *
 * Crie as exceções customizadas:
 *
 *   class SaldoInsuficienteException extends Exception
 *     - saldoAtual: double
 *     - valorSolicitado: double
 *     + mensagem: "Saldo insuficiente. Disponível: R$X | Solicitado: R$Y"
 *     + getters para saldoAtual e valorSolicitado
 *
 *   class ProdutoIndisponivelException extends RuntimeException
 *     - nomeProduto: String
 *     - qtdSolicitada: int
 *     - qtdDisponivel: int
 *
 * Crie uma classe Carrinho com:
 *   - saldo: double
 *   - List<String> itens
 *   + adicionarProduto(String nome, int qtd, int disponivel, double preco)
 *     lança ProdutoIndisponivelException se qtd > disponivel
 *     lança SaldoInsuficienteException se saldo < preco*qtd
 *
 * No main: demonstre as duas exceções sendo capturadas e exibindo
 * as informações extras que você guardou nelas.
 */
public class Ex03ExcecaoCustom {
    // TODO: exceções customizadas e classe Carrinho

    public static void main(String[] args) {
        // TODO
    }
}
