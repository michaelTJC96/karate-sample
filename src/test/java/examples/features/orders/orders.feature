Feature: Orders API Tests

  Background:
    * url baseUrl

  Scenario: Get non-existing order
    Given path 'orders', 999
    When method get
    Then status 404
