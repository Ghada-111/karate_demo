Feature: Put Api Demo

  #Simple Put request
  Scenario: Put demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "morpheus", "job": "zion resident"}
    When method put
    Then status 200
    And print response

  #Put request with assertions
  @second
  Scenario: Put demo 3
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "morpheus", "job": "zion resident"}
    When method put
    Then status 200
    And match response == { "name": "morpheus", "job": "zion resident", "updatedAt": "#ignore"}
    And print response

  #put with read response from file
  Scenario: Put demo 4
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "morpheus", "job": "zion resident"}
    When method put
    Then status 200
    And def expectedResponse = read ("putResponse.json")
    And match $ == expectedResponse
    And print response

  #put with read request from file
  Scenario: Put demo 5
    Given url 'https://reqres.in/api/users/2'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'/src/test/java/test/putRequest.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method put
    Then status 200
    And def expectedResponse = read ("putResponse.json")
    And match $ == expectedResponse
    And print response
    
     #Read body data from file and change request values
  Scenario: Put Demo 6
    Given url 'https://reqres.in/api/users/2'
    And def reqBody = read("putRequest.json")
    And set reqBody.name = 'Ghada'
    And request reqBody
    When method put
    Then status 200
    And print response
    
    
