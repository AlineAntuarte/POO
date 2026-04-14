import java.util.ArrayList;
import java.util.List;

/**
 * AULA 06 — Exercício 1: Polimorfismo com Formas Geométricas
 *
 * Crie:
 *   - Forma (superclasse): cor, calcularArea(), calcularPerimetro(), toString()
 *   - Circulo extends Forma: raio
 *   - Retangulo extends Forma: largura, altura
 *   - Triangulo extends Forma: base, alturaT, ladoA, ladoB, ladoC
 *
 * Fórmulas:
 *   Círculo: área = π*r², perímetro = 2*π*r
 *   Retângulo: área = l*h, perímetro = 2*(l+h)
 *   Triângulo: área = (base*alt)/2, perímetro = a+b+c
 *
 * No main:
 *   1. Crie List<Forma> com 2 de cada tipo
 *   2. Para cada forma: imprima tipo, área e perímetro
 *   3. Calcule e imprima a área total de todas as formas
 *   4. Encontre a forma com maior área
 */
abstract class Forma {
    protected String cor;

    public Forma(String cor) {
        this.cor = cor;
    }

    public abstract double calcularArea();
    public abstract double calcularPerimetro();

    @Override
    public String toString() {
        return getClass().getSimpleName() + "{cor='" + cor +
               String.format("', area=%.2f, perimetro=%.2f}", calcularArea(), calcularPerimetro());
    }
}

// TODO: class Circulo extends Forma
// TODO: class Retangulo extends Forma
// TODO: class Triangulo extends Forma

public class Ex01Formas {
    public static void main(String[] args) {
        List<Forma> formas = new ArrayList<>();

        // TODO: adicione formas

        double areaTotal = 0;
        for (Forma f : formas) {
            System.out.println(f);
            areaTotal += f.calcularArea();
        }

        System.out.printf("%nÁrea total: %.2f%n", areaTotal);

        // TODO: encontre a maior área
    }
}
