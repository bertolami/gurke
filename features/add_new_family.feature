@wip
Feature: Add a family
  As an admin user
  I want to create and add a new family
  In order to increase the known families

  Scenario: Add Schmetterlingsblütler
    Given I am logged in as admin user
    When I create a "schwachzehrend" "Baum"
    Then the newly created family "Baum" is available for use
