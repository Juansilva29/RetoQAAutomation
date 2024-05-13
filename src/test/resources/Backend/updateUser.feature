Feature: service Update user
  As Qa Automation
  I want to update  different users


  Background: consume service
    * url url


  Scenario: Update existing customer

    * def rqUpdateUser = {"name": '#(updateName)',"job": '#(updateJob)'}

    Given path 'api','users','2'
    And request rqUpdateUser
    When method put
    Then status 200
    And assert response.job == "QA Analyst"

  Scenario: update non-existing user

    * def rqUpdateUser = {"name": '#(updateName)',"job": '#(updateJob)'}

    Given path 'api','users','100000000'
    And request rqUpdateUser
    When method put
    Then status 404
