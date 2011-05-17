Feature: show plants of a family
  As a gardener
  When I'm looking for the plants of a family
  Gurke shows me all the plants of a family as specified

  Scenario Outline: looking for the plants belonging to the same family x
    Given a "<family>" name
    Then the plants are "<plants>"

    Scenarios:
      | family              | plants        |
      | Koerbchenbluetler   | Kopfsalat     |
      | Gaensefussgewaechse | Randen Spinat |
      | Liliengewaechse     | Zwiebel       |
