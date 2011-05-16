Feature: show details of a plant
  as a gardener
  when I'm looking for details of a plant
  Gurke show me the details

  Scenario Outline: looking for family name and energy need of the plant
    Given A "<plant>" name
    Then The family name is "<family>"
    And the energy need is "<energy_need>"

    Scenarios:
      | plant     | family              | energy_need    |
      | Kopfsalat | Koerbchenbluetler   | schwachzehrend |
      | Zwiebel   | Liliengewaechse     | schwachzehrend |
      | Randen    | Gaensefussgewaechse | starkzehrend   |
