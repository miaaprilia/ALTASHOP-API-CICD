Feature: Get Product By ID
  As a user
  I want to get product data
  So that I can be get product data

  Background:
    Given I set API endpoint invalid for get a single product data the path
    When I send request to get a single product data invalid ID

  #Scenario Positive
  Scenario: As a user I can get a single product data with a valid ID
    Given I set API endpoint valid for get a single product data
    When I send request to get a single product data
    Then I received status code 200 OK get product by ID
    And I received detail single product data response

  #Scenario Negative
  Scenario: As a user I cannot get product data with an invalid ID (by entering the ID numbers, letters & symbols at the same time)
    Then I received status code 400 Bad Request in request to get product by ID
    And I received error message "400 Bad Request" response

  Scenario: As a user I can't get product data with an invalid ID (by entering an ID number that does not yet exist in the database)
    Then I received status code 404 Not Found in request to get product by ID
    And I received message error "record not found" response
