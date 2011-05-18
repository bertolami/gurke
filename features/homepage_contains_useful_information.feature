Feature: Homepage contains usefull information
  As an logged in user
  I want be able to see the important information on the home page
  In order to increase useability

  Scenario Outline: Homepage contains link to plants
    Given I am logged in as user
    When I open the homepage
    Then I see a link to the "<diplay_name>" that goes to "<target>"

    Scenarios:
      | diplay_name      | target   |
      | Pflanzen         | plants   |
      | Pflanzenfamilien | families |
