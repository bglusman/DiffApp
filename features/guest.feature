Feature:
  As a guest (non-logged-in) user
  I want to access public features of the site

  Scenario: Incentives index
    Given there are incentives
    When I go to the incentives index
    Then I should see the incentives

  Scenario: 'Claim' on incentives index links to incentive detail
    Given there are incentives
    When I go to the incentives index
    And I choose to claim the first incentive
    Then I should see details of the first incentive
    And I should see an invitation to log in and claim the incentive
