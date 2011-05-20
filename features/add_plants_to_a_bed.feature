@wip
Feature: Add plants to a bed
  As a gardener
  I want to add suitable plants to a bed
  in order to get a big harvest


  Scenario Outline: add some plants to bed
    Given A bed with name "<name>" and field "<field>"
    When I add "<plants>"
    Then Gurke saves the bed


    Scenarios:
      | name  | field | plants         |
      | hallo | A     | Rüebli Zwiebel |
      | hi    | B     | Kopfsalat      |
      | this  | C     | Spinat Randen  |
      | that  | D     | Kartoffel      |
