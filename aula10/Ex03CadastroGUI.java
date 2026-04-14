import javax.swing.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * AULA 10 — Exercício 3: Formulário de Cadastro
 *
 * Crie um formulário de cadastro de pessoas:
 *
 * Campos: Nome, Idade, Email, Cidade
 * Botões: "Cadastrar", "Listar", "Limpar"
 *
 * - "Cadastrar": valida que nenhum campo está vazio,
 *   cria um objeto Pessoa e adiciona a uma List<Pessoa>
 *   Mostra JOptionPane de sucesso ou erro
 *
 * - "Listar": abre um JOptionPane (ou JTextArea) com todos cadastrados
 *
 * - "Limpar": limpa todos os campos
 *
 * Validações:
 *   - Nenhum campo pode ser vazio
 *   - Idade deve ser um número inteiro válido entre 0 e 130
 *   - Email deve conter "@" e "."
 *
 * DICA: use JOptionPane.showMessageDialog() para feedback visual.
 */
public class Ex03CadastroGUI {

    static class Pessoa {
        String nome, email, cidade;
        int idade;

        public Pessoa(String nome, int idade, String email, String cidade) {
            this.nome = nome;
            this.idade = idade;
            this.email = email;
            this.cidade = cidade;
        }

        @Override
        public String toString() {
            return nome + " | " + idade + " anos | " + email + " | " + cidade;
        }
    }

    public static void main(String[] args) {
        List<Pessoa> pessoas = new ArrayList<>();

        SwingUtilities.invokeLater(() -> {
            JFrame janela = new JFrame("Cadastro de Pessoas");
            janela.setSize(400, 280);
            janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

            // TODO: adicione componentes e listeners

            janela.setVisible(true);
        });
    }
}
