Feature: Get api features

  Scenario: get users details
    Given url "https://gorest.co.in/public/v2/posts"
    When method Get
    Then status 200
    And print response
    * def jsonResponse = response
    * print jsonResponse
    
    
    
Scenario: get users details-user not found 
    Given url "https://gorest.co.in/public/v2/posts/2"
    When method Get
    Then status 404
    And print response
    