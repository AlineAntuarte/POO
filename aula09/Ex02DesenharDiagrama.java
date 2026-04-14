/**
 * AULA 09 — Exercício 2: Desenhe o diagrama antes de codificar
 *
 * Sistema descrito abaixo. Antes de codificar:
 * 1. Desenhe o diagrama UML de classes nos comentários (use ASCII art)
 * 2. Identifique: atributos, métodos, multiplicidades
 * 3. Depois implemente
 *
 * DESCRIÇÃO DO SISTEMA:
 * Uma escola tem turmas. Cada turma tem vários alunos e um professor.
 * Um aluno pode estar em no máximo uma turma.
 * Um professor pode lecionar em várias turmas.
 * Cada aluno tem nome, matrícula e uma lista de notas (doubles).
 * A turma tem nome e código.
 * O professor tem nome e especialidade.
 *
 * Comportamentos necessários:
 *   - Aluno: adicionarNota(double), calcularMedia(): double, situacao(): String
 *   - Turma: adicionarAluno(Aluno), listarAlunos(), mediaGeral(): double
 *   - Professor: listarTurmas(), adicionarTurma(Turma)
 *
 * TODO: desenhe o diagrama aqui em comentário, depois implemente abaixo.
 *
 * Diagrama:
 * [desenhe aqui]
 */
import java.util.ArrayList;
import java.util.List;

// TODO: Aluno, Turma, Professor

public class Ex02DesenharDiagrama {
    public static void main(String[] args) {
        // Crie: 1 professor, 2 turmas, 3 alunos por turma
        // Associe professor às turmas, alunos às turmas
        // Adicione notas aos alunos
        // Imprima: média geral de cada turma e situação de cada aluno
    }
}
