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
