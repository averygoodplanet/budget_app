Feature: Table Page
  As a user, I want to be able to

  -see a table listing budgets by budget name and last time updated
  -when I log in

  Scenario: Login and then See Table Page
    Given I'm logged in as a testuser
    Given I have two budgets created in the system
    Then I should see the two budgets' names displayed
    Then show me the page