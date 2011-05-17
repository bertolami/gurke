Feature: show plants of the family "Liliengewaechse"
  As a gardener
  When I visit the detail view of the family "Gänsefussgewächse"
  Gurke shows me a website containing the plants "Plantlist"

  Scenario: listing the plants of the family "Gänsefussgewächse"
    When I visit the detail view of the family "Gänsefussgewächse"
    Then I see a website containing the plants "Spinat Randen"