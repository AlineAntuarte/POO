import javax.swing.*;
import java.awt.*;

/**
 * AULA 10 — Exercício 1: Primeira janela Swing
 *
 * Compile e rode este arquivo: javac Ex01JanelaSimples.java && java Ex01JanelaSimples
 *
 * Crie uma janela que:
 * 1. Tem um campo de texto para o usuário digitar o nome
 * 2. Tem um botão "Cumprimentar"
 * 3. Ao clicar, exibe "Olá, [nome]! Bem-vindo(a)!" em um JLabel
 * 4. Tem um botão "Limpar" que apaga o campo e o label
 *
 * TODO: complete os ActionListeners dos botões.
 */
public class Ex01JanelaSimples {
    public static void main(String[] args) {
        // SwingUtilities.invokeLater garante que a GUI seja criada na thread certa
        SwingUtilities.invokeLater(() -> {
            JFrame janela = new JFrame("Minha Primeira Janela");
            janela.setSize(450, 200);
            janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            janela.setLayout(new FlowLayout(FlowLayout.LEFT, 10, 10));

            JLabel labelNome = new JLabel("Seu nome:");
            JTextField campoNome = new JTextField(20);
            JButton btnCumprimentar = new JButton("Cumprimentar");
            JButton btnLimpar = new JButton("Limpar");
            JLabel labelResultado = new JLabel(" ");

            // TODO: adicione ActionListener ao btnCumprimentar
            // Dica: btnCumprimentar.addActionListener(e -> { ... });

            // TODO: adicione ActionListener ao btnLimpar

            janela.add(labelNome);
            janela.add(campoNome);
            janela.add(btnCumprimentar);
            janela.add(btnLimpar);
            janela.add(labelResultado);

            janela.setVisible(true);
        });
    }
}
