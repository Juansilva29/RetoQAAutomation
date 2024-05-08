Feature: service user
  As Qa Automation
  I want to create update delete and query different users
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Create a new user

    * def rqCreateUser = {"name": '#(name)',"job": '#(job)'}
    * def rsCreateUser = read('rsCreateUser.json')
    Given path 'api','users'
    And request rqCreateUser
    When method post
    Then status 201
    And assert response.name == "Juan Felipe"

  Scenario: response structure validation when creating a user

    * def rqCreateUser = {"name": '#(name)',"job": '#(job)'}
    * def rsCreateUser = read('rsCreateUser.json')
    Given path 'api','users'
    And request rqCreateUser
    When method post
    Then match response == rsCreateUser


  Scenario: Consult existing customer

    Given path 'api','users','2'
    When method get
    Then status 200
    And assert response.data.id == 2


  Scenario: Update existing customer

    * def rqUpdateUser = {"name": '#(updateName)',"job": '#(updateJob)'}

    Given path 'api','users','2'
    And request rqUpdateUser
    When method put
    Then status 200
    And assert response.job == "QA Analyst"

  Scenario: Delete existing customer

    Given path 'api','users','2'
    When method delete
    Then status 204
