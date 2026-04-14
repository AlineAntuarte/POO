import java.util.ArrayList;
import java.util.List;

/**
 * AULA 07 — Exercício 1: Classe Abstrata
 *
 * Implemente com classe ABSTRATA:
 *
 *   abstract class Imposto
 *   - produto: String
 *   - valorBase: double
 *   + abstract calcularImposto(): double
 *   + calcularTotal(): double  ← valorBase + calcularImposto()
 *   + toString()
 *
 *   class ICMS extends Imposto      (alíquota: 18%)
 *   class ISS extends Imposto       (alíquota: 5%)
 *   class IPI extends Imposto       (alíquota: 10%)
 *
 * No main:
 *   1. Tente instanciar Imposto diretamente — o que acontece?
 *   2. Crie uma lista com impostos de diferentes tipos
 *   3. Calcule o total de imposto arrecadado
 */
public class Ex01FormaAbstrata {
    // TODO: abstract class Imposto
    // TODO: ICMS, ISS, IPI

    public static void main(String[] args) {
        // TODO: tente: Imposto i = new Imposto("Produto", 100); — vai compilar?

        List<Object> impostos = new ArrayList<>(); // troque Object por Imposto quando implementar
        // TODO
    }
}
