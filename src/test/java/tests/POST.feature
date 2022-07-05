Feature: Post API demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')

  # Simple Post Request
  Scenario: Post demo 1
    Given url  'https://reqres.in/api/users'
    * def requestbody = 
    """
    {
    "name": "Sree Vaishnavi",
    "job": "Test Engineer"
    }
    """
    And request requestbody 
    When method POST
    Then status 201
    And print response

  # Post with background
  Scenario: Post demo 2
    Given path '/users'
    And request  {"name": "Sree Vaishnavi","job": "Test Engineer"}
    When method POST
    Then status 201
    And print response

  # Post with assertions
  Scenario: Post demo 3
    Given path '/users'
    And request  {"name": "Sree Vaishnavi","job": "Test Engineer"}
    When method POST
    Then status 201
    And match response == {"name": "Sree Vaishnavi","job": "Test Engineer","id": "#string","createdAt": "#ignore"}
    And print response

  # Post with read response from file
  Scenario: Post demo 4
    Given path '/users'
    And request  {"name": "Sree Vaishnavi","job": "Test Engineer"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response

  # Post with read request from file
  Scenario: Post demo 5
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath + '/src/test/java/request1.json'
    And def requestBody = filePath
    And print filePath
    And request requestBody
    When method POST
    Then status 201
    And print response

  # Post with read response from file
  Scenario: Post demo 6
    Given path '/users'
    And def requestBody = read("request1.json")
    And set requestBody.job = 'engineer'
    And request requestBody
    When method POST
    Then status 201
    And print response
    
    
    
    
    
    
