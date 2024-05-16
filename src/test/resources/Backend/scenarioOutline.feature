Feature: service user with multiples users
  As Qa Automation
  I want to create different users
  To validate the status code and response

  Background: consume service
    * url url
    * def rqCreateUser = {"name": '#(names)',"job": '#(jobs)'}



  Scenario Outline: Create a new users

    Given path 'api','users'
    And request rqCreateUser
    When method post
    Then status 201

    Examples:
      | names   | jobs                 |
      | Andres  | Tester               |
      | Camila  | requirements analyst |
      | Mariela | business analyst     |