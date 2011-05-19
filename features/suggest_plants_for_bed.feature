@wip
Feature: suggest plants for a bed
  As a gardener
  when I have an empty bed and want to plant something on it
  then Gurke suggests a list of candidate plants

  Scenario Outline:
    Given a bed "<bed>" with field "<field>"
    When I ask Gurke for a plant to seed there
    Then Gurke suggests plants "<plants>"

    Scenarios:
      | bed | field | plants         |
      | 1   | A     | Rüebli Zwiebel |
      | 2   | B     | Kopfsalat      |
      | 3   | C     | Spinat Randen  |
      | 4   | D     | Kartoffel      |
