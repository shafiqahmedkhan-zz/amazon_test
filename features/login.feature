Feature: Sign into Amazon.co.uk

  Scenario: Display the list of all audio books in the collection
    Given Amazon.co.uk is open
    When I click login
    And enter shafiq_malik_2010@hotmail.com and Vipergtsr1!
    Then I am logged in
