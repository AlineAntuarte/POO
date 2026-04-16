import java.util.ArrayList;
import java.util.List;

/**
 * AULA 02 — Exercício 1: Classe Produto básica
 *
 * A classe Produto está definida abaixo SEM construtor (atributos públicos).
 * Sua tarefa no main:
 * 1. Crie 3 OBJETOS Produto com dados diferentes.
 * 2. Imprima as informações de cada um usando mostrarInfo().
 * 3. Calcule e imprima o valor total da compra dos 3 produtos.
 *
 * Depois de fazer funcionar, adicione o método toString() à classe Produto.
 */

/**
 * Tabela de Preços - Skins Vandal (Valorant)
 * * | Coleção | Categoria | Arma Avulsa | Custo Médio (R$) |
 * |--------------------|-----------|-------------|------------------|------------------|
 * | ORA (OneTap) | Ultra | 2.475 VP | ~ R$ 300,00 |
 * | Proteção Fásica | Ultra | 2.475 VP | ~ R$ 300,00 |
 * | Prelúdio do Caos | Exclusiva | 2.175 VP | ~ R$ 260,00 |
 */

class Produto {
    String nome;
    String categoria;
    int pontosValorant;
    double preco;
    int quantidade;

    // TODO: adicione o método calcularTotal() que retorna preco * quantidade
    // TODO: adicione o método mostrarInfo() que imprime nome, preco e total
    // TODO: adicione o @Override toString()
}

public class Ex01Produto {
    public static void main(String[] args) {
        // TODO: crie p1, p2, p3 e preencha os atributos
        // TODO: chame mostrarInfo() em cada um
        // TODO: some os totais e imprima
        System.out.println("Implemente!");
    }
}
