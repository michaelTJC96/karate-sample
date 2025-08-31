Feature: User API Tests

  Background:
    * url 'https://reqres.in/api'
    * header x-api-key = apiToken

  @smoke
  Scenario: Get user by id
    Given path 'users', 2
    When method get
    Then status 200
    And match response.data.id == 2
    And match response.data.email contains '@reqres.in'

  Scenario: Create new user
    Given path 'users'
    And request { name: 'john', job: 'qa' }
    When method post
    Then status 201
    And match response.name == 'john'
    And match response.job == 'qa'

  Scenario: Update user
    Given path 'users', 2
    And request { name: 'john', job: 'staff engineer' }
    When method put
    Then status 200
    And match response.job == 'staff engineer'

  Scenario: Delete user
    Given path 'users', 2
    When method delete
    Then status 204
