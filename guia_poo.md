# Guia de Estudos — Programação Orientada a Objetos em Java

## POO786202 — IFSC São José — 2026/1

> Você já sabe Java básico (variáveis, if/else, for/while, métodos estáticos). Este guia parte daí e leva até o conteúdo completo da disciplina. Cada "aula" tem teoria, exemplos comentados e exercícios. Os arquivos .java de cada exercício ficam nas pastas 'aulaxx'.

---

## Sumário

1. [Aula 01 — Revisão Java e Estrutura de um Programa](#aula-01)
2. [Aula 02 — Classes e Objetos](#aula-02)
3. [Aula 03 — Construtores e a Palavra-chave `this`](#aula-03)
4. [Aula 04 — Encapsulamento: `private`, Getters e Setters](#aula-04)
5. [Aula 05 — Herança](#aula-05)
6. [Aula 06 — Polimorfismo](#aula-06)
7. [Aula 07 — Classes Abstratas e Interfaces](#aula-07)
8. [Aula 08 — Tratamento de Exceções](#aula-08)
9. [Aula 09 — UML: Diagrama de Classes](#aula-09)
10. [Aula 10 — Java Swing (GUI)](#aula-10)

---

## Aula 01 — Revisão Java e Estrutura de um Programa {#aula-01}

### O que você já deve saber

Antes de entrar em POO, vale revisar a base que a disciplina assume:

- Tipos primitivos: `int`, `double`, `boolean`, `char`
- Tipo referência: `String`
- Estruturas: `if/else`, `switch`, `for`, `while`, `do-while`
- Arrays: `int[] nums = new int[5];`
- Métodos estáticos: `public static int soma(int a, int b)`

### Diferença entre programação estruturada e OO

Na programação **estruturada** (o que você fez em Algoritmos), o programa é uma sequência de instruções e funções que operam sobre dados soltos. Na **orientada a objetos**, os dados e as funções que os manipulam ficam juntos dentro de um **objeto**.

```java
// Estilo estruturado — dados soltos, cálculo espalhado
String nomeProduto1 = "Teclado";
double precoProduto1 = 150.0;
int qtdProduto1 = 10;
double total1 = precoProduto1 * qtdProduto1; // lógica fora do dado

// Estilo OO — dados e comportamento juntos no objeto
Produto p1 = new Produto("Teclado", 150.0, 10);
double total1 = p1.calcularTotal(); // lógica dentro do objeto
```

O problema do estilo estruturado fica claro quando você tem 50 produtos: variáveis `nomeProduto1` até `nomeProduto50`, `precoProduto1`... vira um caos impossível de manter.

### Como compilar e rodar

```bash
# Dentro da pasta da aula:
javac NomeDaClasse.java    # compila, gera .class
java NomeDaClasse          # executa
```

Se o arquivo tem `package main;` no topo:

```bash
javac -d . NomeDaClasse.java
java main.NomeDaClasse
```

### Exercícios da Aula 01

Os arquivos estão em `aula01/`. Abra, leia, compile e rode cada um:

- `Revisao01.java` — revisão de condicionais com Scanner
- `Revisao02.java` — revisão de laços e arrays

---

## Aula 02 — Classes e Objetos {#aula-02}

### O que é uma Classe?

Uma **classe** é um molde. Ela descreve como objetos daquele tipo devem ser — quais dados têm (atributos) e o que podem fazer (métodos/comportamentos).

**Classe ≠ Objeto.** A classe é o projeto; o objeto é a peça fabricada a partir desse projeto.

```text
Classe: Gato              Objetos criados a partir dela:
  - raça: String            gato1: raça=Siamês, nome=Bichano, peso=4kg
  - nome: String            gato2: raça=Maine Coon, nome=Listrado, peso=6kg
  - peso: double            gato3: raça=Savannah, nome=Gatuno, peso=2.5kg
  - miar(): void
```

### Estrutura de uma Classe em Java

```java
public class NomeDaClasse {

    // 1. ATRIBUTOS (características — o que o objeto "tem" ou "conhece")
    String nome;
    double preco;
    int quantidade;

    // 2. MÉTODOS (comportamentos — o que o objeto "faz")
    public double calcularTotal() {
        return preco * quantidade;  // usa os próprios atributos
    }

    public void mostrarInfo() {
        System.out.println("Produto: " + nome);
        System.out.println("Preço: R$ " + preco);
        System.out.println("Qtd: " + quantidade);
        System.out.println("Total: R$ " + calcularTotal());
    }
}
```

> **Dica:** Atributos são *substantivos e adjetivos* (o que o objeto é/tem). Métodos são *verbos* (o que o objeto faz).

### Criando e Usando Objetos

```java
// O operador 'new' manda a JVM criar um objeto na memória (heap)
// e devolve uma referência para ele.
Produto p1 = new Produto();  // instanciação

// O ponto '.' é o operador de acesso — aponta para dentro do objeto
p1.nome = "Mouse";
p1.preco = 80.0;
p1.quantidade = 3;

// Chamando um método do objeto:
double total = p1.calcularTotal();
p1.mostrarInfo();
```

### O que acontece na memória?

```text
Stack (variáveis locais):         Heap (objetos):
┌─────────────────┐               ┌──────────────────────────┐
│ p1 → 0x1A3F00   │──────────────▶│ nome: "Mouse"            │
└─────────────────┘               │ preco: 80.0              │
                                  │ quantidade: 3            │
                                  └──────────────────────────┘
```

A variável `p1` na stack guarda apenas o **endereço** (referência) onde o objeto está na heap. Por isso em Java dizemos que objetos são *tipos referência*.

### Vários objetos da mesma classe

```java
Produto p1 = new Produto();
p1.nome = "Teclado";
p1.preco = 150.0;
p1.quantidade = 2;

Produto p2 = new Produto();
p2.nome = "Monitor";
p2.preco = 900.0;
p2.quantidade = 1;

// Cada objeto tem seus próprios valores, independentes entre si
System.out.println(p1.calcularTotal()); // 300.0
System.out.println(p2.calcularTotal()); // 900.0
```

### `toString()` — representação textual do objeto

O método `toString()` é chamado automaticamente quando você passa um objeto para `System.out.println()`. Se você não definir, Java imprime algo como `Produto@1a2b3c` (inútil). Reescreva-o:

```java
@Override
public String toString() {
    return "Produto{nome='" + nome + "', preco=" + preco + ", qtd=" + quantidade + "}";
}

// Uso:
System.out.println(p1);  // chama toString() automaticamente
// Imprime: Produto{nome='Teclado', preco=150.0, qtd=2}
```

### Exercícios da Aula 02

Arquivos em `aula02/`:

- `Ex01Produto.java` — crie a classe `Produto` e instancie 3 objetos
- `Ex02Funcionario.java` — crie a classe `Funcionario` com cálculo de salário
- `Ex03Lista.java` — use `ArrayList<Produto>` para gerenciar uma lista de produtos

---

## Aula 03 — Construtores e a Palavra-chave `this` {#aula-03}

### O problema dos objetos "vazios"

No exemplo anterior, após `new Produto()`, o objeto existia mas seus atributos eram `null`, `0.0` e `0`. Faz sentido um produto sem nome e sem preço? Provavelmente não.

O **construtor** resolve isso: ele força a inicialização dos atributos no momento da criação.

### O que é um Construtor?

- Método especial com **exatamente o mesmo nome da classe**
- **Não tem tipo de retorno** (nem `void`)
- É executado **automaticamente** quando você usa `new`
- Seu objetivo é inicializar o objeto em um estado válido

```java
public class Produto {

    String nome;
    double preco;
    int quantidade;

    // CONSTRUTOR — mesmo nome da classe, sem tipo de retorno
    public Produto(String nome, double preco, int quantidade) {
        this.nome = nome;           // explico o 'this' abaixo
        this.preco = preco;
        this.quantidade = quantidade;
    }

    public double calcularTotal() {
        return preco * quantidade;
    }
}
```

Agora o uso muda:

```java
// Antes (sem construtor):
Produto p = new Produto();
p.nome = "Teclado";
p.preco = 150.0;
p.quantidade = 2;

// Depois (com construtor):
Produto p = new Produto("Teclado", 150.0, 2);  // tudo de uma vez, obrigatório
```

### A palavra-chave `this`

`this` é uma **autorreferência** — é o objeto dizendo "eu mesmo". É necessária quando o nome do parâmetro é igual ao nome do atributo:

```java
public Produto(String nome, double preco, int quantidade) {
    // 'nome' sozinho = o parâmetro que chegou (valor novo)
    // 'this.nome' = o atributo do objeto (onde vamos guardar)
    this.nome = nome;
    this.preco = preco;
    this.quantidade = quantidade;
}
```

Analogia: o professor entra na sala com uma caneta (parâmetro) e diz "troque **sua** (this.caneta) caneta por **esta** (caneta) que estou entregando".

### Sobrecarga de Construtores

Uma classe pode ter **vários construtores** com assinaturas diferentes (sobrecarga):

```java
public class Produto {
    String nome;
    double preco;
    int quantidade;

    // Construtor completo
    public Produto(String nome, double preco, int quantidade) {
        this.nome = nome;
        this.preco = preco;
        this.quantidade = quantidade;
    }

    // Construtor sem quantidade (assume 1)
    public Produto(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
        this.quantidade = 1;  // valor padrão
    }

    // Construtor padrão (sem parâmetros)
    public Produto() {
        this.nome = "Sem nome";
        this.preco = 0.0;
        this.quantidade = 0;
    }
}
```

> **Atenção:** Se você definir **qualquer** construtor, o Java **não** cria mais o construtor padrão vazio automaticamente. Se precisar de `new Produto()`, você tem que definir explicitamente.

### Exercícios da Aula 03

Arquivos em `aula03/`:

- `Ex01Pessoa.java` — classe `Pessoa` com construtor e cálculo de IMC
- `Ex02ContaBancaria.java` — classe `Conta` com construtor obrigatório (agência, número, senha, saldo)
- `Ex03Veiculo.java` — sobrecarga de construtores

---

## Aula 04 — Encapsulamento: `private`, Getters e Setters {#aula-04}

### Por que encapsular?

Sem encapsulamento, qualquer parte do programa pode alterar diretamente os atributos de um objeto — inclusive de forma inválida:

```java
Conta conta = new Conta("João", "0001", "1234", "abc", 1000.0);
conta.saldo = -99999;  // isso não deveria ser possível!
conta.senha = "";       // nem isso
```

O **encapsulamento** esconde o estado interno do objeto e só permite acesso controlado através de métodos.

### Modificadores de acesso

| Modificador | Visível para                         |
|-------------|--------------------------------------|
| `public`    | Todo mundo                           |
| `private`   | Apenas a própria classe              |
| `protected` | A classe e suas subclasses           |
| *(padrão)*  | Classes do mesmo pacote              |

A regra prática: **atributos sempre `private`, métodos geralmente `public`**.

### Getters e Setters

**Getter** = método que retorna o valor de um atributo privado.  
**Setter** = método que define o valor, podendo validar antes de aceitar.

```java
public class Conta {

    private String titular;
    private String agencia;
    private String numConta;
    private String senha;
    private double saldo;

    public Conta(String titular, String agencia, String numConta, String senha, double saldo) {
        this.titular = titular;
        this.agencia = agencia;
        this.numConta = numConta;
        this.senha = senha;
        this.saldo = saldo;
    }

    // GETTER — só lê, não deixa modificar diretamente
    public String getTitular() {
        return titular;
    }

    // SETTER — com validação!
    public void setSaldo(double saldo) {
        if (saldo >= 0) {                    // regra de negócio aqui
            this.saldo = saldo;
        } else {
            System.out.println("Saldo não pode ser negativo!");
        }
    }

    // Não há setSaldo direto para operações — usamos métodos de negócio:
    public void depositar(double valor) {
        if (valor > 0) {
            this.saldo += valor;
        }
    }

    public void sacar(double valor) {
        if (valor > 0 && valor <= this.saldo) {
            this.saldo -= valor;
        } else {
            System.out.println("Saque inválido ou saldo insuficiente.");
        }
    }

    public double verificarSaldo() {
        return saldo;
    }

    // Não existe getSenha() público — a senha não deve ser lida de fora
    // Só existe um método de verificação:
    public boolean autenticar(String senhaInformada) {
        return this.senha.equals(senhaInformada);
    }
}
```

### Convenção de nomenclatura

- Getter: `get` + nome do atributo com inicial maiúscula → `getTitular()`, `getSaldo()`
- Setter: `set` + nome do atributo com inicial maiúscula → `setTitular()`, `setSaldo()`
- Para `boolean`: getter pode ser `is` → `isAtivo()`, `isMaiorDeIdade()`

### Análise do código do professor

Olhando `Conta.java` do professor, existe um `getSenha()` público. Em um sistema real isso é um problema de segurança — você nunca deveria expor a senha diretamente. O `SistemaBanco.java` usa `conta.getSenha().equals(senha)` em vez de um método `autenticar()`. É funcionalmente equivalente para o exercício, mas em produção, usaríamos hash de senha e nunca a comparação direta.

### Exercícios da Aula 04

Arquivos em `aula04/`:

- `Ex01ContaEncapsulada.java` — reimplemente `Conta` com encapsulamento correto
- `Ex02Produto.java` — encapsule `Produto` com validação no setter de preço
- `Ex03Funcionario.java` — encapsule `Funcionario`, valide horas trabalhadas ≥ 0

---

## Aula 05 — Herança {#aula-05}

### O que é herança?

Herança permite criar uma classe nova **baseada em uma existente**, reaproveitando e especializando seus atributos e métodos. A classe nova (*subclasse* ou *filha*) herda tudo da classe base (*superclasse* ou *pai*) e pode adicionar ou sobrescrever comportamentos.

```text
        Funcionario
        - nome
        - salarioBase
        + calcularSalario()
        + imprimirResumo()
               │
       ┌───────┴────────┐
       │                │
  Gerente           Estagiario
  - bonus            - bolsaAuxilio
  + calcularSalario() (diferente!)
```

### Sintaxe: `extends`

```java
// Superclasse
public class Funcionario {
    protected String nome;      // 'protected' = visível para subclasses
    protected double salarioBase;

    public Funcionario(String nome, double salarioBase) {
        this.nome = nome;
        this.salarioBase = salarioBase;
    }

    public double calcularSalario() {
        return salarioBase;
    }

    public void imprimirResumo() {
        System.out.println("Funcionário: " + nome);
        System.out.println("Salário: R$ " + calcularSalario());
    }
}

// Subclasse
public class Gerente extends Funcionario {
    private double bonus;

    public Gerente(String nome, double salarioBase, double bonus) {
        super(nome, salarioBase);  // chama o construtor do pai — OBRIGATÓRIO
        this.bonus = bonus;
    }

    @Override  // indica que estamos sobrescrevendo o método do pai
    public double calcularSalario() {
        return salarioBase + bonus;  // salario diferente para gerente
    }
}
```

### `super` — referência à superclasse

- `super(args)` no construtor: chama o construtor do pai. **Deve ser a primeira linha** do construtor filho.
- `super.metodo()` em qualquer método: chama a versão do pai daquele método.

```java
@Override
public void imprimirResumo() {
    super.imprimirResumo();  // imprime o que o pai já imprime
    System.out.println("Bônus: R$ " + bonus);  // adiciona informação nova
}
```

### A classe `Object`

Em Java, **toda** classe implicitamente herda de `Object`. É por isso que toda classe tem `toString()`, `equals()`, `hashCode()` — eles estão definidos em `Object`. Quando você usa `@Override` no `toString()`, está sobrescrevendo o que veio de `Object`.

### Hierarquia de tipos — `instanceof`

```java
Gerente g = new Gerente("Maria", 5000, 1000);

System.out.println(g instanceof Gerente);     // true
System.out.println(g instanceof Funcionario); // true! (herança)
System.out.println(g instanceof Object);      // true! (todo objeto)
```

### Exercícios da Aula 05

Arquivos em `aula05/`:

- `Ex01Animal.java` — hierarquia Animal → Cachorro, Gato
- `Ex02Funcionario.java` — hierarquia Funcionario → Gerente, Estagiario, Vendedor
- `Ex03Veiculo.java` — hierarquia Veiculo → Carro, Moto, Caminhao

---

## Aula 06 — Polimorfismo {#aula-06}

### O que é polimorfismo?

**Poli** = muitos, **morfo** = formas. Um mesmo método pode ter comportamentos diferentes dependendo do objeto que o chama.

Polimorfismo é o que torna herança realmente poderosa: você pode tratar objetos de subclasses diferentes de forma uniforme, e cada um se comporta da sua maneira.

```java
// Todos são Funcionario — mas calcularSalario() faz coisas diferentes
Funcionario f1 = new Funcionario("Ana", 3000);
Funcionario f2 = new Gerente("Bob", 5000, 1500);      // referência Funcionario, objeto Gerente
Funcionario f3 = new Estagiario("Carla", 0, 800);     // referência Funcionario, objeto Estagiario

// O Java descobre em tempo de execução qual método chamar (late binding)
System.out.println(f1.calcularSalario()); // 3000.0
System.out.println(f2.calcularSalario()); // 6500.0  ← versão do Gerente
System.out.println(f3.calcularSalario()); // 800.0   ← versão do Estagiario
```

### Polimorfismo com listas

O poder real aparece quando você coloca objetos diferentes em uma lista e itera:

```java
List<Funcionario> equipe = new ArrayList<>();
equipe.add(new Funcionario("Ana", 3000));
equipe.add(new Gerente("Bob", 5000, 1500));
equipe.add(new Estagiario("Carla", 0, 800));

double folha = 0;
for (Funcionario f : equipe) {
    folha += f.calcularSalario();  // cada um calcula do seu jeito
    f.imprimirResumo();
}
System.out.println("Folha total: R$ " + folha);
```

Sem polimorfismo, você precisaria de um `if (f instanceof Gerente)` para cada tipo — quebrando o código a cada novo tipo adicionado.

### Sobrecarga vs Sobrescrita

| | Sobrecarga (*overloading*) | Sobrescrita (*overriding*) |
| -- | -- | -- |
| O que é | Mesmo nome, parâmetros diferentes | Filho redefine método do pai |
| Quando resolve | Em tempo de compilação | Em tempo de execução |
| Anotação | — | `@Override` |
| Relação | Na mesma classe | Entre pai e filho |

```java
// Sobrecarga (overloading) — mesma classe, parâmetros diferentes
public void depositar(double valor) { ... }
public void depositar(double valor, String descricao) { ... }

// Sobrescrita (overriding) — filho redefine pai
@Override
public double calcularSalario() { ... }
```

### Exercícios da Aula 06

Arquivos em `aula06/`:

- `Ex01Formas.java` — hierarquia Forma → Circulo, Retangulo, Triangulo com `calcularArea()`
- `Ex02Banco.java` — polimorfismo com lista de contas (ContaCorrente, ContaPoupanca)
- `Ex03Sobrecarga.java` — prática de sobrecarga de métodos

---

## Aula 07 — Classes Abstratas e Interfaces {#aula-07}

### Classes Abstratas

Uma **classe abstrata** é uma classe que *não pode ser instanciada diretamente* — ela existe apenas para ser herdada. Útil quando a classe base não faz sentido sozinha.

```java
// Não faz sentido criar um "Forma" sem saber qual forma é
public abstract class Forma {
    protected String cor;

    public Forma(String cor) {
        this.cor = cor;
    }

    // Método abstrato — sem implementação, OBRIGA as filhas a implementar
    public abstract double calcularArea();

    // Método concreto — herdam normalmente
    public void mostrarInfo() {
        System.out.println("Cor: " + cor);
        System.out.println("Área: " + calcularArea());
    }
}

public class Circulo extends Forma {
    private double raio;

    public Circulo(String cor, double raio) {
        super(cor);
        this.raio = raio;
    }

    @Override
    public double calcularArea() {
        return Math.PI * raio * raio;
    }
}

// Forma f = new Forma("azul");   ← ERRO de compilação!
Forma f = new Circulo("azul", 5); // OK — polimorfismo
```

### Interfaces

Uma **interface** é um contrato: define quais métodos uma classe **deve** ter, sem dizer como implementá-los. Uma classe pode implementar **múltiplas** interfaces (Java não tem herança múltipla de classes).

```java
// Interface = contrato
public interface Autenticavel {
    boolean autenticar(String senha);  // implicitamente public abstract
}

public interface Imprimivel {
    void imprimir();
}

// Uma classe pode implementar várias interfaces
public class Conta implements Autenticavel, Imprimivel {
    private String senha;

    @Override
    public boolean autenticar(String senhaInformada) {
        return this.senha.equals(senhaInformada);
    }

    @Override
    public void imprimir() {
        System.out.println("Extrato da conta...");
    }
}
```

### Quando usar cada um?

| | Classe Abstrata | Interface |
| -- | -- | -- |
| Herança múltipla | Não | Sim |
| Pode ter atributos | Sim | Só constantes (`static final`) |
| Pode ter código | Sim (métodos concretos) | Sim (desde Java 8, `default`) |
| Relação | "É um" (herança) | "Sabe fazer" (capacidade) |

> Exemplo: `Gerente extends Funcionario` (é um funcionário) + `implements Autenticavel` (sabe autenticar).

### `enum` — Enumerações

`enum` é um tipo especial que representa um conjunto fixo de constantes.

```java
public enum StatusConta {
    ATIVA, INATIVA, BLOQUEADA
}

public class Conta {
    private StatusConta status;

    public Conta(...) {
        this.status = StatusConta.ATIVA;  // começa ativa
    }

    public void bloquear() {
        this.status = StatusConta.BLOQUEADA;
    }

    public boolean estaAtiva() {
        return this.status == StatusConta.ATIVA;
    }
}
```

### Exercícios da Aula 07

Arquivos em `aula07/`:

- `Ex01FormaAbstrata.java` — classe abstrata `Forma` com subclasses
- `Ex02Interfaces.java` — interface `Tributavel` aplicada a diferentes produtos
- `Ex03Enum.java` — `enum` para status de pedidos de uma loja

---

## Aula 08 — Tratamento de Exceções {#aula-08}

### O que é uma exceção?

Uma **exceção** é um evento anormal que interrompe o fluxo normal do programa. Em Java, exceções são objetos — instâncias de classes que herdam de `Throwable`.

```text
Throwable
├── Error (erros graves do sistema — não trate)
└── Exception
    ├── RuntimeException (exceções não verificadas)
    │   ├── NullPointerException
    │   ├── ArrayIndexOutOfBoundsException
    │   └── NumberFormatException
    └── IOException (exceções verificadas — deve tratar)
        └── FileNotFoundException
```

### `try / catch / finally`

```java
try {
    // código que pode lançar exceção
    int resultado = 10 / 0;          // ArithmeticException
    String s = null;
    s.length();                       // NullPointerException
} catch (ArithmeticException e) {
    System.out.println("Divisão por zero: " + e.getMessage());
} catch (NullPointerException e) {
    System.out.println("Referência nula: " + e.getMessage());
} catch (Exception e) {
    // captura qualquer outra exceção (deve ser o último catch genérico)
    System.out.println("Erro inesperado: " + e.getMessage());
} finally {
    // executa SEMPRE — com ou sem exceção
    // útil para fechar arquivos, conexões, etc.
    System.out.println("Bloco finally executado.");
}
```

### Lançando exceções: `throw`

```java
public void sacar(double valor) {
    if (valor <= 0) {
        throw new IllegalArgumentException("Valor de saque deve ser positivo.");
    }
    if (valor > saldo) {
        throw new IllegalStateException("Saldo insuficiente.");
    }
    saldo -= valor;
}

// Usando:
try {
    conta.sacar(-100);
} catch (IllegalArgumentException e) {
    System.out.println("Erro: " + e.getMessage());
}
```

### Criando suas próprias exceções

```java
public class SaldoInsuficienteException extends RuntimeException {
    private double saldo;
    private double valorSolicitado;

    public SaldoInsuficienteException(double saldo, double valorSolicitado) {
        super("Saldo insuficiente. Saldo: R$" + saldo + ", Solicitado: R$" + valorSolicitado);
        this.saldo = saldo;
        this.valorSolicitado = valorSolicitado;
    }

    public double getSaldo() { return saldo; }
    public double getValorSolicitado() { return valorSolicitado; }
}
```

### Exercícios da Aula 08

Arquivos em `aula08/`:

- `Ex01TratamentoBasico.java` — try/catch com divisão e conversão de String para número
- `Ex02ContaComExcecoes.java` — classe `Conta` lançando exceções de negócio
- `Ex03ExcecaoCustom.java` — crie e use sua própria exceção

---

## Aula 09 — UML: Diagrama de Classes {#aula-09}

### O que é UML?

UML (*Unified Modeling Language*) é uma linguagem visual para modelar sistemas. O **Diagrama de Classes** é o mais usado em POO — ele representa as classes, seus atributos, métodos e os relacionamentos entre elas.

### Notação básica de uma classe

```text
┌─────────────────────────┐
│         Conta           │  ← Nome da classe
├─────────────────────────┤
│ - titular: String       │  ← Atributos
│ - agencia: String       │    (- = private, + = public, # = protected)
│ - saldo: double         │
├─────────────────────────┤
│ + depositar(v: double)  │  ← Métodos
│ + sacar(v: double)      │
│ + verificarSaldo(): double │
└─────────────────────────┘
```

### Relacionamentos

**Herança (generalização):**

```text
Funcionario ◁────── Gerente
            (seta com triângulo vazio = "é um")
```

**Implementação de interface:**

```text
<<interface>>
Autenticavel ◁- - - Conta
             (seta tracejada = "implementa")
```

**Associação (tem um):**

```text
Cliente ──────── Conta
   1         0..*
(um cliente tem zero ou mais contas)
```

**Multiplicidade:**

- `1` = exatamente um
- `0..*` = zero ou muitos
- `1..*` = um ou muitos
- `0..1` = zero ou um (opcional)

### Como ler um diagrama e traduzir para Java

Dado o diagrama:

```text
        Banco
        - nome: String
        - contas: List<Conta>
        + adicionarConta(c: Conta)
        + buscarConta(num: String): Conta
              │ 1
              │ contém
              │ 0..*
            Conta
            - titular: String
            - saldo: double
            + depositar(v: double)
```

Tradução:

```java
public class Banco {
    private String nome;
    private List<Conta> contas = new ArrayList<>();

    public void adicionarConta(Conta c) {
        contas.add(c);
    }

    public Conta buscarConta(String numConta) {
        for (Conta c : contas) {
            if (c.getNumConta().equals(numConta)) return c;
        }
        return null;
    }
}
```

### Exercícios da Aula 09

Arquivos em `aula09/`:

- `Ex01LerDiagrama.java` — implemente o sistema a partir do diagrama no comentário do arquivo
- `Ex02DesenharDiagrama.java` — o arquivo descreve um sistema; escreva o diagrama em comentário e depois implemente

---

## Aula 10 — Java Swing (GUI) {#aula-10}

### O que é Java Swing?

**Swing** é a biblioteca padrão do Java para criar interfaces gráficas (janelas, botões, campos de texto, etc.). É parte do `javax.swing`.

### Componentes principais

| Componente | O que é |
| ------------ | --------- |
| `JFrame` | A janela principal |
| `JPanel` | Painel para agrupar componentes |
| `JLabel` | Rótulo de texto |
| `JTextField` | Campo de texto de uma linha |
| `JTextArea` | Campo de texto multilinha |
| `JButton` | Botão clicável |
| `JComboBox` | Lista suspensa |
| `JCheckBox` | Caixa de seleção |

### Uma janela simples

```java
import javax.swing.*;
import java.awt.*;

public class MinhaJanela {
    public static void main(String[] args) {
        // Cria a janela
        JFrame janela = new JFrame("Meu Programa");
        janela.setSize(400, 300);
        janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        janela.setLayout(new FlowLayout());

        // Componentes
        JLabel label = new JLabel("Nome:");
        JTextField campo = new JTextField(20);
        JButton botao = new JButton("Clique aqui");
        JLabel resultado = new JLabel("");

        // Evento do botão — ActionListener (interface!)
        botao.addActionListener(e -> {
            String nome = campo.getText();
            resultado.setText("Olá, " + nome + "!");
        });

        // Adiciona à janela
        janela.add(label);
        janela.add(campo);
        janela.add(botao);
        janela.add(resultado);

        janela.setVisible(true);
    }
}
```

### Layouts

O **layout manager** controla como os componentes se posicionam:

- `FlowLayout` — coloca um ao lado do outro (padrão do JPanel)
- `BorderLayout` — divide em North, South, East, West, Center (padrão do JFrame)
- `GridLayout(linhas, colunas)` — grade fixa
- `BoxLayout` — empilha verticalmente ou horizontalmente

```java
JPanel painel = new JPanel(new GridLayout(3, 2, 5, 5)); // 3 linhas, 2 colunas, gaps
painel.add(new JLabel("Nome:"));
painel.add(new JTextField(15));
painel.add(new JLabel("Email:"));
painel.add(new JTextField(15));
painel.add(new JLabel("Telefone:"));
painel.add(new JTextField(15));
```

### Eventos com ActionListener

Em Swing, interações do usuário (clique, tecla) são tratadas via **listeners** — e ActionListener é uma interface (POO em ação!):

```java
// Forma clássica (classe anônima)
botao.addActionListener(new ActionListener() {
    @Override
    public void actionPerformed(ActionEvent e) {
        System.out.println("Botão clicado!");
    }
});

// Forma moderna (lambda — Java 8+)
botao.addActionListener(e -> System.out.println("Botão clicado!"));
```

### Exercícios da Aula 10

Arquivos em `aula10/`:

- `Ex01JanelaSimples.java` — janela com campo, botão e label de resultado
- `Ex02CalculadoraGUI.java` — calculadora básica com Swing
- `Ex03CadastroGUI.java` — formulário de cadastro com validação

---

## Dicas Gerais para a Prova

**Conceitos que sempre caem:**

1. **Classe vs Objeto** — classe é o molde, objeto é a instância criada com `new`
2. **`this`** — autorreferência, usado quando parâmetro e atributo têm o mesmo nome
3. **Construtor** — mesmo nome da classe, sem retorno, executado no `new`
4. **Encapsulamento** — atributos `private`, acesso via getters/setters
5. **Herança** — `extends`, `super()` no construtor, `@Override`
6. **Polimorfismo** — mesmo método, comportamentos diferentes; lista de tipo pai recebe objetos filho
7. **Abstrato** — classe abstrata não instancia, método abstrato força implementação nas filhas
8. **Interface** — contrato, `implements`, múltiplas por classe
9. **Exceções** — `try/catch/finally`, `throw new`, criar exceção customizada
10. **`toString()`** — sempre sobrescreva para ter saída útil no `println`

**Armadilhas comuns:**

- Esquecer `super(args)` no construtor da subclasse → erro de compilação
- Não usar `@Override` → não percebe que errou o nome do método e não sobrescreveu nada
- `NullPointerException` → tentou usar objeto que ainda é `null`
- Comparar Strings com `==` em vez de `.equals()` → sempre use `.equals()`

---

> *Guia gerado com base nos slides da disciplina, código fornecido e ementa do SIGAA — POO786202 IFSC São José 2026/1*
