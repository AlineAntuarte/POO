/**
 * AULA 07 — Exercício 2: Interfaces
 *
 * Crie as interfaces:
 *
 *   interface Tributavel
 *     + calcularImposto(): double
 *
 *   interface Desconto
 *     + calcularDesconto(): double
 *     + aplicarDesconto(): double  ← default: retorna preco - calcularDesconto()
 *
 * Implemente:
 *   class ProdutoFisico implements Tributavel, Desconto
 *     - nome, preco: campos
 *     - calcularImposto(): preco * 0.12  (12% de imposto)
 *     - calcularDesconto(): preco * 0.05 (5% de desconto fidelidade)
 *
 *   class Servico implements Tributavel
 *     - descricao, valorHora: campos
 *     - horas: int
 *     - calcularImposto(): valorTotal * 0.05  (ISS 5%)
 *     - calcularTotal(): valorHora * horas
 *
 * No main:
 *   1. Crie 2 ProdutoFisico e 2 Servico
 *   2. Para cada Tributavel: mostre nome e imposto
 *   3. Para cada Desconto: mostre preço com e sem desconto
 */
public class Ex02Interfaces {
    // TODO: interfaces e classes

    public static void main(String[] args) {
        // TODO
    }
}
