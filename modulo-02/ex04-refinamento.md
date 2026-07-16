# Exercício 4 — Refinamento sucessivo
Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

    “Um sistema de caixa de supermercado deve registrar os itens de uma compra,     calcular o
    subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar  o total a
    pagar.”

---

### Entregue dois níveis: o Nível 1 (visão geral, 3–4 passos) e o Nível 2 (cada passo detalhado).

---
### Nível 1 visão geral
    Início
        Obter e Registrar item dentro do carrinho
        Calcular subtotal do carrinho
        Validar desconto cartão fidelidade do cliente
        Aplicar desconto cartão fidelidade do subtotal do carrinho
        Mostrar subtotal a ser pago
    Fim


### Nível 2 detalhado
    Início
        Definir lista_itens_compra como Vazia
        Definir subtotal igual 0
        Definir valor_desconto igual 0
        Definir total_a_pagar igual 0

        * Obter e Registrar item dentro do carrinho
            Definir continuar_compra como Verdadeiro

            Enquanto continuar_compra == Verdadeiro:
                Ler código_do_produto
                Ler quantidade

                Consultar banco de dados dos itens
                dados_do_item <-- Processar dados_do_item com parâmetros        (código_do_produto, quantidade)
                Exibir "Consultando item..."

                Validação do item retornado
                Se dados_do_item existe E dados_do_item[preço] > 0:
                    item_valido <-- Verdadeiro
                Senão:
                    item_valido <-- Falso

                Registro do item validado
                Se item_valido == Verdadeiro:
                    Adicionar dados_do_item em lista_itens_compra
                    Exibir "Item adicionado com sucesso!"
                Senão:
                    Exibir "Erro: Item inválido ou sem preço cadastrado, tente  novamente."

                Verificar se quer continuar a registrar itens no carrinho
                Ler resposta_usuario "Deseja registrar mais um item? (Sim/Não)"
                Se resposta_usuario == "Não":
                    continuar_compra <-- Falso

        * Calcular subtotal do carrinho
            Para cada item em lista_itens_compra:
                subtotal <-- subtotal + (item[preço] * item[quantidade])

        * Validar desconto cartão fidelidade do cliente
            Ler resposta_fidelidade "Cliente possui cartão fidelidade? (Sim/Não)"

            Se resposta_fidelidade == "Sim":
                valor_desconto <-- subtotal * 0.05
            Senão:
                valor_desconto <-- 0

        * Aplicar desconto cartão fidelidade do subtotal do carrinho
            total_a_pagar <-- subtotal - valor_desconto

        * Mostrar subtotal a ser pago
            Mostrar "--------------------------------------"
            Mostrar "Subtotal:        R$ ", subtotal
            Mostrar "Desconto (5%):   R$ ", valor_desconto
            Mostrar "Total a pagar:   R$ ", total_a_pagar
            Mostrar "--------------------------------------"
    Fim

