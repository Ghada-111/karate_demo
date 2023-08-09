
Feature: First Api testing 

  
  Scenario: Hello world scenario
  Given url 'https://reqres.in/api/users?page=2'
  When method Get
  Then status 200
 