Feature: Product Search

  Background:
    Given Amazon.co.uk is open and I am logged in

  Scenario: Search for product and verify the first result is related to your product
    When I search for "####(pick a product of your choice)"
    Then the first result has the word  "####" in it

  Scenario: Search for product and verify the first result is related to your product
    When I search for "####(pick a product of your choice)"
    Then the first result has the word  "####" in it