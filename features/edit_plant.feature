Feature: Edit a plant
  As an admin user
  I want to edit an existing plant
  In order to maintain the plant data set

  @wip
  Scenario: Rename Rucola to Rucoli
    Given I am logged in as "admin" user
    And the plant "Rucola" is already known
    When I rename the plant to "Rucoli"
    Then the plant is available under the new name
