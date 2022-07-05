Feature: PUT api method

  Scenario: Put Demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "sree vaishnavi","job": "test engineer"}
    When method PUT
    Then status 200
    And print response
    
