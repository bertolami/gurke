Feature: Add a plant
  As an admin user
  I want to add a new plant
  In order to increase the plant data set

  Scenario: Add Vergissmeinnicht
    Given I am logged in as "admin" user
    And the family "Raublattgewächse" is already known
    When I create a plant "Vergissmeinnicht" with family "Raublattgewächse"
    Then the newly created plant "Vergissmeinnicht" is available for use
    And belongs to the family "Raublattgewächse"
