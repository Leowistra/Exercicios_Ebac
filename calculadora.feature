
Feature: Calculadora
    Como não sei fazer conta de canbeça
    Quero usar a calculadora do sistema
    Para somar dois números

    Scenario: Soma de dois numeros
        Given que eu acesse a calculadora
        When eu somar 2 + 2
        Then o resultado deve ser 4

    Scenario Outline: Soma de 2 números
        When eu somar o <numero1>
        And o <numero2>
        Then deve exibir o <resultado>

        Examples:
            | numero1 | numero2 | resultado |
            | 0       | 1       | 1         |
            | 1       | 1       | 2         |
            | 1       | 2       | 3         |
            | 2       | 2       | 4         |
            | 3       | 2       | 5         |
            | 4       | 3       | 7         |
            | 5       | 4       | 9         |
            | 6       | 7       | 13        |
            | 8       | 9       | 17        |
            | 10      | 11      | 21        |
            | 12      | 14      | 26        |
            | 13      | 15      | 28        |
            | 18      | 22      | 30        |
            | 23      | 32      | 55        |
            | 45      | 54      | 99        |
            | 66      | 44      | 110       |
            | 125     | 985     | 1110      |
            | 583     | 9527    | 10.110    |
            | 4898    | 7854    | 12.752    |
            | 50470   | 84565   | 135.035   |
