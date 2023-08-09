 Feature: get demo
 
 
 Scenario: get
 Given url baseUrl
 	When method GET
 	Then status 200
 	Then print name 

 