Feature: Configure Product
    As an EBAC-SHOP customer
    I want to configure my product according to my size, preference and choose the quantity
    So that I can add it to the cart

    Background:
        Given I access the EBAC-SHOP page

    Scenario: Color and Size Selection
        When I select the color
        And the size
        Then an alert message must be displayed: "Please select the quantity!"

    Scenario: Size and Quantity Selection
        When I select the size
        And the quantity
        Then an alert message must be displayed: "Please select the color!"

    Scenario: Color and Quantity Selection
        When I select the color
        And the quantity
        Then an alert message must be displayed: "Please select the size!"

    Scenario: Color, Size, and Quantity Selection
        When I select the color
        And the size
        And the quantity
        Then a success message must be displayed: "Item(s) added to cart!"

    Scenario: Selecting up to 10 Products
        When I select 10 products or less
        Then a success message must be displayed: "Item(s) added to cart!"

    Scenario: Selecting More than 10 Products
        When I select more than 10 products
        Then an alert message must be displayed: "Cart item limit exceeded (max: 10)!"

    Scenario: "Clear" Button
        When i click the "Clear" button
        Then all items should be removed from the cart
        And a message must be displayed: "Cart is empty!"

    Scenario Outline: Add Configured Products to Cart
        Given I am on the product page
        When I choose the <color>, <size>, and <quantity>
        Then a success <message> must be displayed

        Examples:
            | color      | size | quantity | message                              |
            | "Azul"     | "P"  | "2"      | "Item(s) added to cart!" |
            | "Vermelho" | "M"  | "1"      | "Item(s) added to cart!" |
            | "Roxo"     | "PP" | "3"      | "Item(s) added to cart!" |
            | "Preto"    | "GG" | "3"      | "Item(s) added to cart!" |
            | "Branco"   | "G"  | "2"      | "Item(s) added to cart!" |

