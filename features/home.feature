Feature: home page

Scenario: Home page includes static content
  When I go to the home page
  Then I should see "Home#index"

Scenario: Home page includes coffeescript-generated content
  When I go to the home page
  Then I should see "coffeescript ok!"
