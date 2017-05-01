Feature: Product Search

  Background:
    Given Amazon.co.uk is open and I am logged in

  Scenario: Search for product and verify the first result is related to your product
    When I search for Candles
    Then the first result has the word Candles in it