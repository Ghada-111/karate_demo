Feature: Delete API demo

  Scenario: Delete demo1
  Given url 'https://reqres.in/api/users/2'
  When method delete 
  Then status 204
  And print response 
