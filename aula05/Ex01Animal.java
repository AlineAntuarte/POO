import java.util.ArrayList;
import java.util.List;

/**
 * AULA 05 — Exercício 1: Hierarquia de Animais
 *
 * Crie a hierarquia:
 *
 *         Animal
 *         - nome: String
 *         - idade: int
 *         + fazerSom(): void   ← cada subclasse implementa diferente
 *         + dormir(): void     ← igual para todos: "ZZZ..."
 *         + toString(): String
 *              │
 *    ┌─────────┼──────────┐
 *  Cachorro  Gato       Passaro
 *  - raca    - cor       - podeVoar: boolean
 *  fazerSom: "Au Au!"   "Miau!"   "Piu Piu!" ou "Gorjeio!"
 *
 * No main:
 *   1. Crie uma List<Animal> com pelo menos 2 de cada tipo
 *   2. Percorra e chame fazerSom() e toString() em cada um
 *   3. Observe o polimorfismo: o mesmo método, sons diferentes
 */
class Animal {
    protected String nome;
    protected int idade;

    public Animal(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public void fazerSom() {
        System.out.println(nome + " faz um som genérico.");
    }

    public void dormir() {
        System.out.println(nome + ": ZZZ...");
    }

    @Override
    public String toString() {
        return "Animal{nome='" + nome + "', idade=" + idade + "}";
    }
}

// TODO: implemente Cachorro extends Animal
// TODO: implemente Gato extends Animal
// TODO: implemente Passaro extends Animal

public class Ex01Animal {
    public static void main(String[] args) {
        List<Animal> animais = new ArrayList<>();

        // TODO: adicione animais à lista

        for (Animal a : animais) {
            System.out.println(a);
            a.fazerSom();
            System.out.println();
        }
    }
}
