import javax.swing.*;
import java.awt.*;

/**
 * AULA 10 — Exercício 2: Calculadora com Swing
 *
 * Crie uma calculadora simples com:
 * - Dois campos de texto para os números
 * - Quatro botões: +, -, *, /
 * - Um JLabel para mostrar o resultado
 * - Trate divisão por zero com uma mensagem amigável
 *
 * Layout sugerido (GridLayout 3x2):
 * [ Número 1: ] [    campo1    ]
 * [ Número 2: ] [    campo2    ]
 * [  +  ] [  -  ] [  *  ] [  /  ]
 * [ Resultado: ] [  resultado  ]
 *
 * DESAFIO: adicione um botão "Limpar" e tratamento para quando
 * o usuário digita texto em vez de número (NumberFormatException).
 */
public class Ex02CalculadoraGUI {
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            JFrame janela = new JFrame("Calculadora");
            janela.setSize(350, 200);
            janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

            // TODO: defina o layout e adicione componentes
            // TODO: implemente os 4 botões de operação

            janela.setVisible(true);
        });
    }
}
