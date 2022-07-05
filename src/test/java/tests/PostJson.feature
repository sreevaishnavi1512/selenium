Feature: sending the request body in karate framework

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: defining JSON object and print it
    Given def jsonObject =
      """
          [
            {
              "name": "jack",
              "phone" : 15435667788
            },
            {
              "name": "jennie",
              "phone" : 13443567234
            }
          ]
      """
    * print jsonObject[1].name, jsonObject[1].phone
    When method POST
    Then print response
