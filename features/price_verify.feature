Feature: Product Search

  Background:
    Given Amazon.co.uk is open and I am logged in

  Scenario: Search for product and verify the first result is related to your product
    When I search for "candles"
    Then the first result has the word  "####" in it

  Scenario: Verify that the original price of the product matches the price seen in the basket
    When I search for "####(pick a product of your choice)"
    And I add "####(pick a product of your choice)" to my basket
    When I check my basket total
    Then it should match the price of "####(pick a product of your choice)"