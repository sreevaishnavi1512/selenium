Feature: verifying the status of vehicle based on vehicle number

  Background: 
    * url 'https://staging.signzy.tech//api/v2/patrons/617a77750cd3f40a5205e593/vehicleregistrations'
    * header Accept = 'application/json'
    * header Authorization = 'yawZZgZAUyUtqoeZEntUJ5vqjn6JHwWWyt5x9Ax0yALRwspchks4hKrZ0jXiovQm'

  Scenario: posting the vehicle number
    Given path '//api/v2/patrons/617a77750cd3f40a5205e593/vehicleregistrations'
    And def jsonObject = {"task": "detailedSearch","essentials": {"vehicleNumber": "MH14AZ3731","blacklistCheck": "true"}}
    When method POST
    Then status 200
    And print response
