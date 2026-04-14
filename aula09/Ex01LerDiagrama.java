/**
 * AULA 09 — Exercício 1: Implementar a partir de um diagrama UML
 *
 * Diagrama (leia e implemente):
 *
 * ┌──────────────────────────────┐
 * │           Biblioteca         │
 * ├──────────────────────────────┤
 * │ - nome: String               │
 * │ - livros: List<Livro>        │
 * ├──────────────────────────────┤
 * │ + adicionarLivro(l: Livro)   │
 * │ + buscarPorTitulo(t:String)  │
 * │   : Livro                    │
 * │ + listarDisponiveis(): void  │
 * │ + toString(): String         │
 * └──────────────────────────────┘
 *           1 │
 *             │ contém
 *        0..* │
 * ┌──────────────────────────────┐
 * │             Livro            │
 * ├──────────────────────────────┤
 * │ - titulo: String             │
 * │ - autor: String              │
 * │ - isbn: String               │
 * │ - disponivel: boolean        │
 * ├──────────────────────────────┤
 * │ + emprestar(): void          │  ← muda disponivel para false
 * │ + devolver(): void           │  ← muda disponivel para true
 * │ + isDisponivel(): boolean    │
 * │ + toString(): String         │
 * └──────────────────────────────┘
 *
 * No main:
 *   1. Crie uma biblioteca com 5 livros
 *   2. Empreste 2 livros
 *   3. Liste apenas os disponíveis
 *   4. Busque um livro por título e imprima seus dados
 *   5. Devolva um dos emprestados e liste disponíveis novamente
 */
import java.util.ArrayList;
import java.util.List;

// TODO: class Livro
// TODO: class Biblioteca

public class Ex01LerDiagrama {
    public static void main(String[] args) {
        // TODO
    }
}
