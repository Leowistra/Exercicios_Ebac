Feature: Login screen
    As an EBAC Portal student
    I want to log in
    To view my grades

    Background:
        Given that i access the EBAC Portal login page

    Scenario: Valid Authentication
        When i enter the username "leo@ebac.com.br"
        And the password "senha@123"
        Then a welcome message must be displayed: "Hello Leo!"

    Scenario: Nonexistent User
        When i enter the username "lagalaga@ebac.com.br"
        And the password "senha@123"
        Then an alert message must be displayed: "Invalid username or password!"

    Scenario: User with Invalid Password
        When i enter the username "leo@ebac.com.br"
        And the password "123456"
        Then an alert message must be displayed: "Invalid username or password!"

    Scenario Outline: Authenticate Multiple Users
        When i enter the <username>
        And the <password>
        Then a success <message> must be displayed

            Exemplos:
            | username              | password    | message          |
            | "leo@ebac.com.br"     | "senha@123" | "Hello Leo!"     |
            | "didio@ebac.com.br"   | "senha@123" | "Hello Didio!"   |
            | "fabiano@ebac.com.br" | "senha@123" | "Hello Fabiano!" |