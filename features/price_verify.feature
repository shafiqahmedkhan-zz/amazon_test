Feature: Product Search

  Background:
    Given Amazon.co.uk is open and I am logged in

  Scenario: Verify that the original price of the product matches the price seen in the basket
    When I search for Candles
    And I add the product to my basket
    When I check my basket total
    Then it should match the price of "####(pick a product of your choice)"