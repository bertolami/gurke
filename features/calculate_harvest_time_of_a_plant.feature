Feature: Calculate the harvest time of a given plant
  As a logged in gardener
  I want know when a plant that is seed at a given time can be harvest
  In order to plan the harvesting

  Scenario Outline: Harvest a Rüebli seed in Mid April
    When I ask for the harvest time of a "<plant>" planted in "<seed_time>"
    And the "<plant>" has an average maturity time of "<maturity_time>"
    And a variation of "<variation>"
    Then the estimated harvest time is "<harvest_time>"

    Scenarios:
      | plant      | seed_time   | maturity_time | variation | harvest_time               |
      | Rüebli     | Mitte April | 3 Monate      | 10%       | Anfang Juli bis Ende Juli  |
      | buschbohne | Anfang Mai  | 2 Monate      | 10%       | Ende Juni bis Anfang Juli |
