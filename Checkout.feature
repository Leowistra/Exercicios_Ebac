Feature: Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que eu acesse a pagina de checkout
        And os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone>, <e-mail> são obrigatórios

    Scenario: Dados obrigatórios preenchidos
        When eu preencher todos os campos obrigatórios
        And prosseguir com a finalização da compra
        Then deve exibir a mensagem de sucesso "Pedido confirmado, previsão de entrega em 5 dias uteis!"

    Scenario: Dados obrigatórios não preenchidos
        When eu deixar de preencher um dos campos obrigatórios
        And prosseguir com a finalização da compra
        Then deve exibir a mensagem de alerta "Favor preencher todos os campos obrigatórios marcados com (*)!"

    Scenario: E-mail no formado inválido
        When eu preencher o campo do email com um formato inválido
        Then deve exibir a mensagem de erro "Formato de e-mail inválido!"

    Scenario Outline: Cadastro das informações inseridas
        When eu preencher o campo <nome> e <sobrenome>
        And o <pais>
        And o <endereco>
        And a <cidade>
        And o <CEP>
        And o <telefone>
        And o <e-mail>
        Then deve exibir a <mensagem> de sucesso

        Examples:
            | nome      | sobrenome | pais     | endereco               | cidade           | CEP       | telefone        | e-mail                 | mensagem             |
            | "Joao"    | "Lucas"   | "Brasil" | "Rua. Jotape, 999 "    | "São Paulo"      | "1234567" | "11 98888-8888" | "joao.lucas@EBAC.com " | "Pedido Confirmado!" |
            | "Lionel"  | "Silva"   | "Brasil" | "Rua. Jabuticaba, 123" | "Rio de Janeiro" | "7654321" | "21 99999-9999" | "li.si@EBAC.com"       | "Pedido Confirmado!" |
            | "Jessica" | "Lontra"  | "Brasil" | "Rua. Logradouro, 99"  | "Salvador"       | "1564725" | "71 97777-7777" | "lontra@EBAC.com "     | "Pedido Confirmado!" |
            | "Ricardo" | "Lover"   | "Brasil" | "Rua. Pavimento, 23 "  | "Pelotas "       | "4526871" | "53 98787-8787" | "lover.ri@EBAC.com"    | "Pedido Confirmado!" |
            | "Janete " | "Catu"    | "Brasil" | "Rua. Capivara, 777 "  | "Barreiras"      | "8474587" | "77 99999-9999" | "catu@EBAC.com"        | "Pedido Confirmado!" |
