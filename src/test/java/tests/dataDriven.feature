Feature: To create emp records

  Background: 
    * header Accept = 'application/json'

  Scenario Outline: To create an emp
    Given url 'https://reqres.in/api/users?page=2'
    And request {"name":<Name>,"job":<Job>,"company": <Company>,"Team Size": <Team Size>}
    When method POST
    Then status 201
    And print response

    Examples: 
      | read('../testData/Book1.csv') |
