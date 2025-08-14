Feature: Configurar Produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que eu acesse a página da EBAC-SHOP

    Scenario: Seleção de cor e tamanho
        When eu selecionar a cor
        And o tamanho
        Then deve mostrar uma mensagem de alerta "Favor escolher a quantidade desejada!"

    Scenario: Seleção de tamanho e quantidade
        When eu selecionar o tamanho
        And a quantidade
        Then deve mostrar uma mensagem de alerta "Favor escolher a cor desejada!"

    Scenario: Seleção de cor e quantidade
        When eu selecionar a cor
        And a quantidade
        Then deve mostrar uma mensagem de alerta "Favor escolher o tamanho desejado!"

    Scenario: Seleção de cor, tamanho e quantidade
        When eu selecionar a cor
        And o tamanho
        And a quantidade
        Then deve mostrar a mensagem de sucesso "Item(s) Adicionado(s) ao carrinho!"

    Scenario: Seleção de até 10 produtos
        When eu selecionar 10 produtos ou menos
        Then deve mostrar a mensagem de sucesso "Item(s) Adicionado(s) ao carrinho!"

    Scenario: Seleção de mais de 10 produtos
        When eu selecionar mais de 10 produtos
        Then deve mostar a mensagem de alerta "Limite de itens no carrinho excedido (max:10)!"

    Scenario: Botão "limpar"
        When eu clicar no botão "limpar"
        Then todos os itens do carrinho devem ser retirados
        And exiber a mensagem "Carrinho vazio!"

    Scenario Outline: Adicionar produtos configurados no carrinho
        Given ter até 10 produtos no carrinho
        When eu escolher a <cor>
        And selecionar o <tamanho>
        And selecionar a <quantidade>
        Then deve mostrar a <mensagem> de sucesso

        Examples:
            | cor        | tamanho | quantidade | mensagem                             |
            | "Azul"     | "P"     | "2"        | "Item(s) Adicionado(s) ao carrinho!" |
            | "Vermelho" | "M"     | "1"        | "Item(s) Adicionado(s) ao carrinho!" |
            | "Roxo"     | "PP"    | "3"        | "Item(s) Adicionado(s) ao carrinho!" |
            | "Preto"    | "GG"    | "3"        | "Item(s) Adicionado(s) ao carrinho!" |
            | "Branco"   | "G"     | "2"        | "Item(s) Adicionado(s) ao carrinho!" |

