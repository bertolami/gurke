Feature: Access seed information of a plant
  As a user
  I want to obtain seed and harvest information
  In order to improve predicatility

  
  Scenario Outline: Display seed information on plant details page
    Given the plant "<plant>" is already known
    When I display the details of "<plant>"
    Then the details page shows "<seed_from>", "<seed_to>", "<maturation_time>" and average "<variation>"

    Scenarios:
      | plant  | seed_from    | seed_to   | maturation_time | variation |
      | Rüebli | Anfang April | Ende June | 2 Monate        | 10%       |
