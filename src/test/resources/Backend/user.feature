Feature: service user
  As Qa Automation
  I want to create update delete and query different users
  To validate the status code and response

  Background: consume service
    * url url
    * def rsCreateUser = read('rsCreateUser.json')
    * def rsCreateUser = read('rsCreateUser.json')


  Scenario: Create a new user

    * def rqCreateUser = {"name": '#(name)',"job": '#(job)'}
    Given path 'api','users'
    And request rqCreateUser
    When method post
    Then status 201
    And assert response.name == "Juan Felipe"

  Scenario: response structure validation when creating a user

    * def rqCreateUser = {"name": '#(name)',"job": '#(job)'}
    Given path 'api','users'
    And request rqCreateUser
    When method post
    Then match response == rsCreateUser

  Scenario: Delete existing customer

    Given path 'api','users','2'
    When method delete
    Then status 204


