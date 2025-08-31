Feature: Common utilities

  Scenario: Generate random email
    * def uuid = java.util.UUID.randomUUID() + '@test.com'
    * def result = { email: '#(uuid)' }
    * match result.email contains '@test.com'
