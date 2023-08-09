Feature: Get API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  #Simple Get Request
  Scenario: Get Demo 1
    Given url 'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200
    And print responseStatus
    And print responseHeaders
    And print responseCookies

  #Get with Background
  Scenario: Get Demo 2
    Given path '/users?page=2'
    When method Get
    Then status 200

  #Get with path and parameters
  Scenario: Get Demo 3
    Given path '/users'
    And param page = 2
    When method Get
    Then status 200

  #Get with assertions
  Scenario: Get Demo 4
    Given path '/users'
    And param page = 2
    When method Get
    Then status 200
    And match response.data[0].first_name != null
    And match response.data[2].first_name != null
    And assert response.data.length == 6
    And match $.data[3].id == 10 
    And match response.data[5].last_name == 'Howell'
  