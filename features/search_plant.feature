Feature: search and find plants
  as a gardner
  when I'm looking for details of a plant
  Gurke gives me an answer

  Scenario Outline: looking for details of the plant
    Given A "<plant>" name
    Then The family name is "<family>"
    And the energy need is "<energy_need>"

    Scenarios:
      | plant     | family              | energy_need    |
      | Kopfsalat | Koerbchenbluetler   | schwachzehrend |
      | Zwiebel   | Liliengewaechse     | schwachzehrend |
      | Randen    | Gaensefussgewaechse | starkzehrend   |
