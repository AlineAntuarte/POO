import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * AULA 02 — Exercício 3: ArrayList de Produtos
 *
 * Crie um sistema de compra que:
 * 1. Permite adicionar produtos a uma List<Produto> em loop
 * 2. O usuário digita nome, preço e quantidade
 * 3. Para sair do loop, o usuário digita "sair" no nome
 * 4. Ao final, lista todos os produtos e o total da compra
 *
 * Use a classe Produto que você criou em Ex01Produto.java
 * (copie a definição dela aqui ou coloque ambos no mesmo arquivo)
 */
public class Ex03Lista {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<ProdutoLista> carrinho = new ArrayList<>();

        System.out.println("=== Carrinho de Compras ===");
        System.out.println("(Digite 'sair' no nome para encerrar)");

        // TODO: loop de cadastro
        // TODO: listar produtos
        // TODO: imprimir total

        sc.close();
    }
}

// Copie/redefina a classe Produto aqui como ProdutoLista para evitar conflito
class ProdutoLista {
    String nome;
    double preco;
    int quantidade;

    // TODO: construtor
    // TODO: calcularTotal()
    // TODO: toString()
}
