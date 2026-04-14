#!/bin/bash
# setup.sh — Cria a estrutura de pastas e arquivos .java para POO786202
# Uso: bash setup.sh
# Isso cria as pastas aula01/ até aula10/ no diretório atual.

echo "=== Criando estrutura de pastas POO786202 ==="

# ─────────────────────────────────────────────
# AULA 01 — Revisão Java
# ─────────────────────────────────────────────
mkdir -p aula01
cat > aula01/Revisao01.java << 'EOF'
import java.util.Scanner;

/**
 * AULA 01 — Exercício 1: Revisão de condicionais
 *
 * Escreva um programa que:
 * 1. Leia a nota de um aluno (0 a 10)
 * 2. Imprima a situação: Aprovado (>=7), Recuperação (>=5), Reprovado (<5)
 * 3. Repita até o usuário digitar -1
 *
 * TODO: implemente o corpo do main abaixo.
 */
public class Revisao01 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("=== Verificador de notas ===");

        // TODO: use um loop 'while' ou 'do-while'
        // Leia a nota com sc.nextDouble()
        // Se a nota == -1, saia do loop
        // Caso contrário, imprima a situação

        System.out.println("Encerrando.");
        sc.close();
    }
}
EOF

cat > aula01/Revisao02.java << 'EOF'
/**
 * AULA 01 — Exercício 2: Revisão de arrays e laços
 *
 * 1. Crie um array de 5 inteiros e preencha com valores à sua escolha.
 * 2. Calcule e imprima: soma, média, maior e menor valor.
 * 3. DESAFIO: inverta o array e imprima-o invertido sem usar outro array.
 *
 * TODO: implemente abaixo.
 */
public class Revisao02 {
    public static void main(String[] args) {
        int[] numeros = {42, 7, 19, 88, 3};

        // TODO: calcule soma
        // TODO: calcule média
        // TODO: encontre maior e menor
        // TODO: inverta o array no lugar (use troca com variável temporária)

        System.out.println("Implemente os TODOs acima!");
    }
}
EOF

echo "✓ aula01/ criada"

# ─────────────────────────────────────────────
# AULA 02 — Classes e Objetos
# ─────────────────────────────────────────────
mkdir -p aula02
cat > aula02/Ex01Produto.java << 'EOF'
import java.util.ArrayList;
import java.util.List;

/**
 * AULA 02 — Exercício 1: Classe Produto básica
 *
 * A classe Produto está definida abaixo SEM construtor (atributos públicos).
 * Sua tarefa no main:
 * 1. Crie 3 objetos Produto com dados diferentes.
 * 2. Imprima as informações de cada um usando mostrarInfo().
 * 3. Calcule e imprima o valor total da compra dos 3 produtos.
 *
 * Depois de fazer funcionar, adicione o método toString() à classe Produto.
 */
class Produto {
    String nome;
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
EOF

cat > aula02/Ex02Funcionario.java << 'EOF'
/**
 * AULA 02 — Exercício 2: Classe Funcionario
 *
 * Implemente a classe Funcionario com:
 * Atributos: nome (String), horasTrabalhadas (int), valorHora (double), desconto (double)
 * Métodos:
 *   - calcularSalarioBruto(): retorna horasTrabalhadas * valorHora
 *   - calcularSalarioLiquido(): retorna bruto - desconto
 *   - imprimirResumo(): imprime todos os dados formatados
 *
 * No main: crie 3 funcionários e imprima o resumo de cada um.
 * DESAFIO: use um array de Funcionario e um for para imprimir todos.
 */
class Funcionario {
    // TODO: declare atributos

    // TODO: implemente construtor

    // TODO: implemente métodos
}

public class Ex02Funcionario {
    public static void main(String[] args) {
        // TODO
    }
}
EOF

cat > aula02/Ex03Lista.java << 'EOF'
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * AULA 02 — Exercício 3: ArrayList de Produtos
 *
 * Crie um sistema de compra que:
 * 1. Permite adicionar produtos a uma List<Produto> em loop
 * 2. O usuário digita nome, preço e quantidade
 * 3. Para sair do loop, o usuário digita "sair" no nome
 * 4. Ao final, lista todos os produtos e o total da compra
 *
 * Use a classe Produto que você criou em Ex01Produto.java
 * (copie a definição dela aqui ou coloque ambos no mesmo arquivo)
 */
public class Ex03Lista {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<ProdutoLista> carrinho = new ArrayList<>();

        System.out.println("=== Carrinho de Compras ===");
        System.out.println("(Digite 'sair' no nome para encerrar)");

        // TODO: loop de cadastro
        // TODO: listar produtos
        // TODO: imprimir total

        sc.close();
    }
}

// Copie/redefina a classe Produto aqui como ProdutoLista para evitar conflito
class ProdutoLista {
    String nome;
    double preco;
    int quantidade;

    // TODO: construtor
    // TODO: calcularTotal()
    // TODO: toString()
}
EOF

echo "✓ aula02/ criada"

# ─────────────────────────────────────────────
# AULA 03 — Construtores e this
# ─────────────────────────────────────────────
mkdir -p aula03
cat > aula03/Ex01Pessoa.java << 'EOF'
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * AULA 03 — Exercício 1: Construtores + this
 *
 * Implemente a classe Pessoa com construtor obrigatório:
 * Atributos: nome (String), altura (double), idade (int), peso (double)
 * Construtor: Pessoa(String nome, double altura, int idade, double peso)
 * Métodos:
 *   - calcularIMC(): peso / (altura * altura)
 *   - ehMaiorDeIdade(): retorna true se idade >= 18
 *   - toString(): representação completa
 *
 * No main:
 * 1. Cadastre 4 pessoas via Scanner
 * 2. Adicione-as em uma List<Pessoa>
 * 3. Percorra a lista e imprima quem é maior de idade e seu IMC
 */
class Pessoa {
    // TODO: atributos private

    // TODO: construtor com todos os parâmetros (use this.x = x)

    // TODO: calcularIMC()
    // TODO: ehMaiorDeIdade()
    // TODO: toString()
}

public class Ex01Pessoa {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<Pessoa> pessoas = new ArrayList<>();

        for (int i = 1; i <= 4; i++) {
            System.out.println("--- Pessoa " + i + " ---");
            System.out.print("Nome: ");
            String nome = sc.nextLine();
            System.out.print("Altura (ex: 1.75): ");
            double altura = sc.nextDouble();
            System.out.print("Idade: ");
            int idade = sc.nextInt();
            System.out.print("Peso (kg): ");
            double peso = sc.nextDouble();
            sc.nextLine(); // limpar buffer

            // TODO: crie a Pessoa e adicione à lista
        }

        System.out.println("\n=== Maiores de Idade ===");
        // TODO: percorra a lista e filtre/imprima
        sc.close();
    }
}
EOF

cat > aula03/Ex02ContaBancaria.java << 'EOF'
/**
 * AULA 03 — Exercício 2: Conta Bancária com construtor
 *
 * Reimplemente a classe Conta do professor, mas:
 * - O construtor deve exigir agência, número, senha e saldo inicial
 * - Não deve ser possível criar uma Conta sem esses dados
 * - Implemente sacar(), depositar(), verificarSaldo()
 * - Implemente um método autenticar(String agencia, String numConta, String senha)
 *   que retorna boolean sem expor os dados internos
 *
 * No main: simule o SistemaBanco.java do professor usando seu construtor.
 */
class Conta {
    // TODO: atributos (pense quais são necessários)

    // TODO: construtor obrigatório

    // TODO: sacar(), depositar(), verificarSaldo()

    // TODO: autenticar()

    // TODO: toString()
}

public class Ex02ContaBancaria {
    public static void main(String[] args) {
        // Crie uma conta e teste:
        // 1. Autenticação com credenciais corretas
        // 2. Autenticação com credenciais erradas
        // 3. Saque e depósito mostrando saldo antes e depois
        System.out.println("Implemente!");
    }
}
EOF

cat > aula03/Ex03Veiculo.java << 'EOF'
/**
 * AULA 03 — Exercício 3: Sobrecarga de construtores
 *
 * Crie a classe Veiculo com atributos:
 *   marca, modelo, ano, cor, combustivel, quilometragem
 *
 * Implemente 3 construtores:
 *   1. Veiculo(marca, modelo, ano) — cor="Branco", comb="Gasolina", km=0
 *   2. Veiculo(marca, modelo, ano, cor) — comb="Gasolina", km=0
 *   3. Veiculo(marca, modelo, ano, cor, combustivel, quilometragem) — completo
 *
 * Método: rodar(double km) — adiciona km à quilometragem
 * Método: toString() — mostra todos os dados
 *
 * No main: crie 3 veículos usando construtores diferentes e imprima.
 */
class Veiculo {
    // TODO
}

public class Ex03Veiculo {
    public static void main(String[] args) {
        // TODO: use os 3 construtores
        // TODO: chame rodar() em um deles e mostre antes/depois
    }
}
EOF

echo "✓ aula03/ criada"

# ─────────────────────────────────────────────
# AULA 04 — Encapsulamento
# ─────────────────────────────────────────────
mkdir -p aula04
cat > aula04/Ex01ContaEncapsulada.java << 'EOF'
/**
 * AULA 04 — Exercício 1: Encapsulamento da Conta
 *
 * Crie a classe Conta com TODOS os atributos private.
 * Implemente getters para: titular, agencia, numConta, saldo
 * NÃO implemente getSenha() — crie autenticar(String senha) em vez disso.
 * Implemente setters APENAS para: titular, agencia
 * (saldo só pode mudar via depositar/sacar)
 *
 * Regras de negócio nos setters/métodos:
 *   - agencia não pode ser null ou vazia
 *   - depositar: valor deve ser > 0
 *   - sacar: valor deve ser > 0 e <= saldo
 *   - autenticar: compara a senha interna sem expô-la
 *
 * No main: demonstre que não é possível acessar conta.saldo diretamente
 * (comente a linha e explique por que dá erro de compilação).
 */
public class Ex01ContaEncapsulada {

    // Defina a classe Conta aqui (ou em arquivo separado)
    static class Conta {
        // TODO: atributos private
        // TODO: construtor
        // TODO: getters e setters com validação
        // TODO: depositar, sacar, verificarSaldo, autenticar
    }

    public static void main(String[] args) {
        Conta c = new Conta("Maria", "0042", "12345", "senha123", 2000.0);

        // TODO: teste getter
        System.out.println("Titular: " + c.getTitular());

        // TODO: tente acessar c.saldo diretamente — o que acontece?
        // System.out.println(c.saldo); // descomente e compile para ver o erro

        // TODO: autenticação
        System.out.println("Auth correta: " + c.autenticar("senha123"));
        System.out.println("Auth errada:  " + c.autenticar("errada"));

        // TODO: depósito e saque com validação
        c.depositar(500);
        System.out.println("Saldo após depósito: " + c.verificarSaldo());
        c.sacar(300);
        System.out.println("Saldo após saque: " + c.verificarSaldo());
        c.sacar(9999); // deve mostrar mensagem de erro
    }
}
EOF

cat > aula04/Ex02ProdutoValidado.java << 'EOF'
/**
 * AULA 04 — Exercício 2: Produto com validação nos setters
 *
 * Crie Produto com atributos private: nome, preco, quantidade, estoque
 * Regras:
 *   - setNome: não aceita null ou vazia
 *   - setPreco: não aceita valor <= 0
 *   - setQuantidade / setEstoque: não aceita valor < 0
 *   - vender(int qtd): diminui quantidade SE qtd <= estoque, senão avisa
 *   - repor(int qtd): aumenta estoque
 *
 * No main: demonstre todas as validações tentando valores inválidos.
 */
public class Ex02ProdutoValidado {
    // TODO: classe Produto aqui

    public static void main(String[] args) {
        // TODO: demonstre validações
    }
}
EOF

cat > aula04/Ex03Funcionario.java << 'EOF'
/**
 * AULA 04 — Exercício 3: Funcionario encapsulado
 *
 * Encapsule completamente a classe Funcionario:
 *   - nome (não pode ser vazio)
 *   - horasTrabalhadas (>= 0)
 *   - valorHora (> 0)
 *   - desconto (0 <= desconto < salarioBruto)
 *
 * Métodos:
 *   - calcularSalarioBruto()
 *   - calcularSalarioLiquido()
 *   - adicionarHoras(int h): adiciona horas ao total
 *   - imprimirContraCheque(): imprime formatado
 *
 * DESAFIO: o desconto não pode ser maior que o salário bruto.
 * Se tentar setar um desconto inválido, mantenha o desconto anterior.
 */
public class Ex03Funcionario {
    // TODO: classe Funcionario encapsulada

    public static void main(String[] args) {
        // TODO
    }
}
EOF

echo "✓ aula04/ criada"

# ─────────────────────────────────────────────
# AULA 05 — Herança
# ─────────────────────────────────────────────
mkdir -p aula05
cat > aula05/Ex01Animal.java << 'EOF'
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
EOF

cat > aula05/Ex02Funcionario.java << 'EOF'
import java.util.ArrayList;
import java.util.List;

/**
 * AULA 05 — Exercício 2: Hierarquia de Funcionários
 *
 * Hierarquia:
 *         Funcionario
 *         - nome: String
 *         - cpf: String
 *         - salarioBase: double
 *         + calcularSalario(): double  ← retorna salarioBase
 *         + imprimirHolerite(): void
 *              │
 *    ┌─────────┼──────────────┐
 *  Gerente  Estagiario     Vendedor
 *  + bonus   + bolsaAux     + comissao: double
 *            (sem salarioBase) + metaVendas: double
 *                             calcularSalario: base + comissao
 *
 * Regra: Estagiario tem salário = bolsaAuxilio (sem base)
 *        Gerente tem salário = base + bonus
 *        Vendedor tem salário = base + comissao
 *
 * No main:
 *   1. Crie uma List<Funcionario> com todos os tipos
 *   2. Calcule a folha de pagamento total
 *   3. Encontre e imprima quem tem o maior salário
 */
class Funcionario {
    protected String nome;
    protected String cpf;
    protected double salarioBase;

    public Funcionario(String nome, String cpf, double salarioBase) {
        this.nome = nome;
        this.cpf = cpf;
        this.salarioBase = salarioBase;
    }

    public double calcularSalario() {
        return salarioBase;
    }

    public void imprimirHolerite() {
        System.out.println("=== Holerite ===");
        System.out.println("Nome: " + nome);
        System.out.println("CPF: " + cpf);
        System.out.printf("Salário: R$ %.2f%n", calcularSalario());
    }
}

// TODO: class Gerente extends Funcionario
// TODO: class Estagiario extends Funcionario
// TODO: class Vendedor extends Funcionario

public class Ex02Funcionario {
    public static void main(String[] args) {
        List<Funcionario> equipe = new ArrayList<>();

        // TODO: adicione funcionários de tipos diferentes

        double folha = 0;
        for (Funcionario f : equipe) {
            f.imprimirHolerite();
            folha += f.calcularSalario();
            System.out.println();
        }

        System.out.printf("Folha total: R$ %.2f%n", folha);

        // TODO: encontre o maior salário
    }
}
EOF

cat > aula05/Ex03Veiculo.java << 'EOF'
/**
 * AULA 05 — Exercício 3: Hierarquia de Veículos
 *
 * Implemente:
 *         Veiculo
 *         - marca, modelo: String
 *         - ano: int
 *         - velocidade: double (começa em 0)
 *         + acelerar(double delta)
 *         + frear(double delta)      ← velocidade não pode ser < 0
 *         + toString()
 *              │
 *    ┌─────────┼──────────┐
 *   Carro    Moto      Caminhao
 *   + numPortas  + cilindrada  + capacidadeCarga (toneladas)
 *   + ligarAC()  + empinar()   + carregar(double t): diminui capacidade
 *                              + descarregar()
 *
 * No main: crie um de cada, acelere/frear e imprima os estados.
 */
public class Ex03Veiculo {
    // TODO: classe Veiculo (pode ser package-private, sem 'public')
    // TODO: Carro, Moto, Caminhao

    public static void main(String[] args) {
        // TODO
    }
}
EOF

echo "✓ aula05/ criada"

# ─────────────────────────────────────────────
# AULA 06 — Polimorfismo
# ─────────────────────────────────────────────
mkdir -p aula06
cat > aula06/Ex01Formas.java << 'EOF'
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
EOF

cat > aula06/Ex02Banco.java << 'EOF'
import java.util.ArrayList;
import java.util.List;

/**
 * AULA 06 — Exercício 2: Sistema Bancário Polimórfico
 *
 * Hierarquia:
 *         ContaBase
 *         - titular, numConta: String
 *         - saldo: double
 *         + depositar(double)
 *         + sacar(double): boolean   ← retorna false se saldo insuficiente
 *         + getSaldo(): double
 *         + toString()
 *              │
 *    ┌──────────────────────┐
 *  ContaCorrente          ContaPoupanca
 *  - limiteChequeEspecial   - taxaRendimento (ex: 0.005 = 0.5% ao mês)
 *  sacar: pode usar limite  + renderJuros(): saldo *= (1 + taxa)
 *
 * No main:
 *   1. Crie List<ContaBase> com contas dos dois tipos
 *   2. Simule um mês: faça depósitos e saques em todas
 *   3. Aplique renderJuros() apenas nas ContaPoupanca (use instanceof)
 *   4. Imprima o extrato de todas as contas
 */
public class Ex02Banco {
    // TODO: ContaBase, ContaCorrente, ContaPoupanca

    public static void main(String[] args) {
        List<Object> contas = new ArrayList<>(); // troque Object por ContaBase quando implementar

        // TODO
    }
}
EOF

cat > aula06/Ex03Sobrecarga.java << 'EOF'
/**
 * AULA 06 — Exercício 3: Sobrecarga (overloading)
 *
 * Crie uma classe Calculadora com os seguintes métodos sobrecarregados:
 *
 * somar(int a, int b): int
 * somar(double a, double b): double
 * somar(int a, int b, int c): int
 * somar(String a, String b): String  ← concatena
 *
 * multiplicar(int a, int b): int
 * multiplicar(double a, double b): double
 * multiplicar(int a, int b, int c): int
 *
 * imprimir(int valor): void
 * imprimir(double valor): void
 * imprimir(String valor): void
 * imprimir(boolean valor): void
 *
 * No main: chame cada versão e observe qual é chamada.
 * REFLEXÃO: escreva um comentário explicando a diferença entre
 * sobrecarga (overloading) e sobrescrita (overriding).
 */
public class Ex03Sobrecarga {

    // TODO: classe Calculadora aqui (pode ser estática interna ou arquivo separado)
    static class Calculadora {
        // TODO
    }

    public static void main(String[] args) {
        Calculadora calc = new Calculadora();

        // TODO: demonstre cada versão sobrecarregada
        // Ex:
        // System.out.println(calc.somar(2, 3));          // int version
        // System.out.println(calc.somar(2.5, 3.7));      // double version
        // System.out.println(calc.somar("Olá", " Mundo")); // String version
    }
}
EOF

echo "✓ aula06/ criada"

# ─────────────────────────────────────────────
# AULA 07 — Classes Abstratas e Interfaces
# ─────────────────────────────────────────────
mkdir -p aula07
cat > aula07/Ex01FormaAbstrata.java << 'EOF'
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
EOF

cat > aula07/Ex02Interfaces.java << 'EOF'
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
EOF

cat > aula07/Ex03Enum.java << 'EOF'
/**
 * AULA 07 — Exercício 3: Enum
 *
 * Crie um sistema de pedidos de e-commerce:
 *
 *   enum StatusPedido { AGUARDANDO_PAGAMENTO, PAGO, SEPARANDO, ENVIADO, ENTREGUE, CANCELADO }
 *
 *   class Pedido
 *     - id: int
 *     - cliente: String
 *     - valor: double
 *     - status: StatusPedido  (começa AGUARDANDO_PAGAMENTO)
 *     + pagar(): muda para PAGO se estava AGUARDANDO_PAGAMENTO
 *     + enviar(): muda para ENVIADO se estava PAGO ou SEPARANDO
 *     + entregar(): muda para ENTREGUE se estava ENVIADO
 *     + cancelar(): cancela SE não está ENVIADO ou ENTREGUE
 *     + toString(): inclui o status
 *
 * No main:
 *   1. Crie 3 pedidos
 *   2. Simule o fluxo completo de um (pagar → enviar → entregar)
 *   3. Tente fazer operações inválidas (ex: entregar sem ter enviado)
 *   4. Cancele outro pedido
 */
public class Ex03Enum {
    // TODO: enum StatusPedido
    // TODO: class Pedido

    public static void main(String[] args) {
        // TODO
    }
}
EOF

echo "✓ aula07/ criada"

# ─────────────────────────────────────────────
# AULA 08 — Tratamento de Exceções
# ─────────────────────────────────────────────
mkdir -p aula08
cat > aula08/Ex01TratamentoBasico.java << 'EOF'
import java.util.Scanner;

/**
 * AULA 08 — Exercício 1: try/catch básico
 *
 * Implemente um programa que:
 *
 * 1. Lê dois números do usuário e divide o primeiro pelo segundo.
 *    - Trate ArithmeticException (divisão por zero)
 *    - Trate NumberFormatException (usuário digitou texto)
 *    - Use finally para imprimir "Operação concluída"
 *
 * 2. Lê uma posição de um array fixo: {10, 20, 30, 40, 50}
 *    - Trate ArrayIndexOutOfBoundsException
 *    - Informe o usuário do intervalo válido
 *
 * 3. Lê uma String e tenta convertê-la para int com Integer.parseInt()
 *    - Trate a exceção apropriada com mensagem amigável
 *
 * ATENÇÃO: os blocos catch devem ter mensagens úteis para o usuário,
 * não apenas imprimir e.getMessage() diretamente.
 */
public class Ex01TratamentoBasico {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // --- Parte 1: Divisão ---
        System.out.println("=== Divisão ===");
        // TODO

        // --- Parte 2: Array ---
        System.out.println("\n=== Acesso a Array ===");
        int[] numeros = {10, 20, 30, 40, 50};
        // TODO

        // --- Parte 3: Conversão ---
        System.out.println("\n=== Conversão String → int ===");
        // TODO

        sc.close();
    }
}
EOF

cat > aula08/Ex02ContaComExcecoes.java << 'EOF'
/**
 * AULA 08 — Exercício 2: Exceções de negócio em ContaBancaria
 *
 * Reescreva a classe Conta com lançamento de exceções:
 *
 *   sacar(double valor):
 *     - lança IllegalArgumentException se valor <= 0
 *     - lança IllegalStateException("Saldo insuficiente") se valor > saldo
 *
 *   depositar(double valor):
 *     - lança IllegalArgumentException se valor <= 0
 *
 *   autenticar(String ag, String num, String senha):
 *     - lança SecurityException se as credenciais não batem
 *     (em vez de retornar false, lança a exceção)
 *
 * No main:
 *   1. Autentique com credenciais erradas e trate a SecurityException
 *   2. Tente sacar valor negativo e trate
 *   3. Tente sacar mais do que o saldo e trate
 *   4. Faça um fluxo normal (autenticar → depositar → sacar) sem exceções
 */
public class Ex02ContaComExcecoes {
    // TODO: classe Conta com throws

    public static void main(String[] args) {
        // TODO: demonstre os 4 cenários acima
    }
}
EOF

cat > aula08/Ex03ExcecaoCustom.java << 'EOF'
/**
 * AULA 08 — Exercício 3: Exceção personalizada
 *
 * Crie as exceções customizadas:
 *
 *   class SaldoInsuficienteException extends Exception
 *     - saldoAtual: double
 *     - valorSolicitado: double
 *     + mensagem: "Saldo insuficiente. Disponível: R$X | Solicitado: R$Y"
 *     + getters para saldoAtual e valorSolicitado
 *
 *   class ProdutoIndisponivelException extends RuntimeException
 *     - nomeProduto: String
 *     - qtdSolicitada: int
 *     - qtdDisponivel: int
 *
 * Crie uma classe Carrinho com:
 *   - saldo: double
 *   - List<String> itens
 *   + adicionarProduto(String nome, int qtd, int disponivel, double preco)
 *     lança ProdutoIndisponivelException se qtd > disponivel
 *     lança SaldoInsuficienteException se saldo < preco*qtd
 *
 * No main: demonstre as duas exceções sendo capturadas e exibindo
 * as informações extras que você guardou nelas.
 */
public class Ex03ExcecaoCustom {
    // TODO: exceções customizadas e classe Carrinho

    public static void main(String[] args) {
        // TODO
    }
}
EOF

echo "✓ aula08/ criada"

# ─────────────────────────────────────────────
# AULA 09 — UML
# ─────────────────────────────────────────────
mkdir -p aula09
cat > aula09/Ex01LerDiagrama.java << 'EOF'
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
EOF

cat > aula09/Ex02DesenharDiagrama.java << 'EOF'
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
EOF

echo "✓ aula09/ criada"

# ─────────────────────────────────────────────
# AULA 10 — Java Swing
# ─────────────────────────────────────────────
mkdir -p aula10
cat > aula10/Ex01JanelaSimples.java << 'EOF'
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
EOF

cat > aula10/Ex02CalculadoraGUI.java << 'EOF'
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
EOF

cat > aula10/Ex03CadastroGUI.java << 'EOF'
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
EOF

echo "✓ aula10/ criada"

# ─────────────────────────────────────────────
# README na raiz
# ─────────────────────────────────────────────
cat > README.md << 'EOF'
# POO786202 — Estrutura de Exercícios

Leia `guia_poo.md` (pode estar na pasta onde você rodou setup.sh) para a teoria completa de cada aula.

## Como compilar e rodar

```bash
cd aula02
javac Ex01Produto.java
java Ex01Produto
```

## Estrutura

| Pasta   | Conteúdo |
|---------|----------|
| aula01/ | Revisão Java (condicionais, loops, arrays) |
| aula02/ | Classes e Objetos básicos |
| aula03/ | Construtores e `this` |
| aula04/ | Encapsulamento (`private`, getters/setters) |
| aula05/ | Herança (`extends`, `super`, `@Override`) |
| aula06/ | Polimorfismo e sobrecarga |
| aula07/ | Classes abstratas, interfaces, `enum` |
| aula08/ | Tratamento de exceções |
| aula09/ | UML — Diagrama de classes |
| aula10/ | Java Swing (GUI) |

## Fluxo recomendado

1. Leia a seção do guia_poo.md referente à aula
2. Abra o arquivo .java da pasta correspondente
3. Leia os comentários — eles descrevem o que você deve implementar
4. Complete os `TODO`s
5. Compile e teste
6. Se travar, volte ao guia para revisar o conceito
EOF

echo ""
echo "=== Estrutura criada com sucesso! ==="
echo ""
echo "Pastas criadas:"
ls -d aula*/
echo ""
echo "Próximo passo: leia guia_poo.md e comece pela aula01/"
echo "  cd aula01"
echo "  javac Revisao01.java"
echo "  java Revisao01"
EOF

echo "✓ setup.sh criado"
