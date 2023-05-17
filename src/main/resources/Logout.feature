Feature:Logout
  Scenario Outline: Logout from Wealth Engine application
    Given User login into application to execute "<testScenario>"
    And User clicks on logged in user profile
    And User clicks on logout button
    Examples:
      | testScenario |
      | Logout       |