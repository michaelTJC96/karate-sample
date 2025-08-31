Feature: Auth Helpers

  Scenario: Get dummy token
    * def token = 'dummy-token-123'
    * karate.set('authToken', token)