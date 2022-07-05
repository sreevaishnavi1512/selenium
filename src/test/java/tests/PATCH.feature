Feature: PUT api method

  Scenario: Patch Demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "sree vaishnavi","job": "test engineer","company": "TEST YANTRA"}
    When method PATCH
    Then status 200
    And print response