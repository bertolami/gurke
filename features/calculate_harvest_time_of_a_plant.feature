Feature: Calculate the harvest time of a given plant
  As a logged in gardener
  I want know when a plant that is seed at a given time can be harvest
  In order to plan the harvesting

  @wip
  Scenario: Harvest a Rüebli seed in Mid April
    When I ask for the harvest time of a "Rüebli" planted in "Mitte April"
    And the "Rüebli" has an average maturity time of "3 Monate"
    And a variation of "10%"
    Then the estimated harvest time is "Anfang Juli bis Ende Juli"
    