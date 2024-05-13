Feature: service get user
  As Qa Automation
  I want to consult different users
  To validate the status code and response

  Background: consume service
    * url url


  Scenario: Consult existing customer

    Given path 'api','users','2'
    When method get
    Then status 200
    And assert response.data.id == 2

  Scenario: consult all users

    Given path 'api','unknown'
    When method get
    Then status 200

