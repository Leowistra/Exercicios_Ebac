Feature: Checkout
    As an EBAC-SHOP customer
    I want to complete my registration
    To finalize my purchase

    Background:
        Given that i access the checkout page and fill the mandatory fields

    Scenario: Mandatory fields filled
        When i fill in all the mandatory fields
        And proceed to finalize the purchase
        Then a success message must be displayed: "Pedido confirmado, entrega em 5 dias uteis!"

    Scenario: Mandatory fieds not filled
        When i don't fill in all the mandatory fields
        And proceed to finalize the purchase
        Then an alert message must be displayed: "Favor preencher todos os campos obrigatórios marcados com (*)!"

    Scenario: Invalid email format
        When i fill the email field with an invalid format
        Then an alert message must be displayed: "Formato de e-mail inválido!"

    Scenario Outline: Redcording the input data
        When i fill in the mandatory fields: <name>, <last name>, <country>, <address>, <city>, <CEP>, <phone>, <e-mail>
        Then a success <message> must be displayed

        Examples:
            | name      | last name | country  | address                | city             | CEP       | phone           | e-mail                 | message              |
            | "Joao"    | "Lucas"   | "Brasil" | "Rua. Jotape, 999 "    | "São Paulo"      | "1234567" | "11 98888-8888" | "joao.lucas@EBAC.com " | "Pedido Confirmado!" |
            | "Lionel"  | "Silva"   | "Brasil" | "Rua. Jabuticaba, 123" | "Rio de Janeiro" | "7654321" | "21 99999-9999" | "li.si@EBAC.com"       | "Pedido Confirmado!" |
            | "Jessica" | "Lontra"  | "Brasil" | "Rua. Logradouro, 99"  | "Salvador"       | "1564725" | "71 97777-7777" | "lontra@EBAC.com "     | "Pedido Confirmado!" |
            | "Ricardo" | "Lover"   | "Brasil" | "Rua. Pavimento, 23 "  | "Pelotas "       | "4526871" | "53 98787-8787" | "lover.ri@EBAC.com"    | "Pedido Confirmado!" |
            | "Janete " | "Catu"    | "Brasil" | "Rua. Capivara, 777 "  | "Barreiras"      | "8474587" | "77 99999-9999" | "catu@EBAC.com"        | "Pedido Confirmado!" |
