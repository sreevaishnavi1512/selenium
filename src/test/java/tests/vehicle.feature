Feature:  verifying the status of vehicle based on vehicle number

Background:
 * url 'https://staging.signzy.tech//api/v2/patrons/617a77750cd3f40a5205e593/vehicleregistrations'
 * header Accept : 'application/json'
 * header Accept : 'yawZZgZAUyUtqoeZEntUJ5vqjn6JHwWWyt5x9Ax0yALRwspchks4hKrZ0jXiovQm'


Scenario: posting the vehicle number

Given def jsonObject = """
{
    "task" : "detailedSearch",
    "essentials": {
    "vehicleNumber" : "MH14AZ3731",
      "blacklistCheck" : "true"
    }
  }"""

 When method POST
 Then status 200
 And print response