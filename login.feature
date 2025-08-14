
Feature: Tela de login
    Como aluno do Portal EBAC
    Quero me autenticar
    Para visualizar minhas notas

    Background:
        Given que eu acesse a página de autenticação do portal EBAC

    Scenario: Autenticação válida
        When eu digitar o usuário "leo@ebac.com.br"
        And a senha "senha@123"
        Then deve exibir uma mensagem de boas vindas "Olá Leo!"

    Scenario: Usuário inexistente
        When eu digitar o usuário "lagalaga@ebac.com.br"
        And a senha "senha@123"
        Then deve exibir uma mensagem de alerta "Usuário ou senha inválidos!"

    Scenario: Usuário com senha inválida
        When eu digitar o usuário "leo@ebac.com.br"
        And a senha "123456"
        Then deve exibir uma mensagem de alerta "Usuário ou senha inválidos!"

    Scenario Outline: Autenticar multiplos usuários
        When eu digitar o <usuario>
        And a <senha>
        Then deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario               | senha       | mensagem       |
            | "leo@ebac.com.br"     | "senha@123" | "Olá Leo!"     |
            | "didio@ebac.com.br"   | "senha@123" | "Olá Didio!"   |
            | "fabiano@ebac.com.br" | "senha@123" | "Olá Fabiano!" |