Feature: Table Page
  As a user, I want to be able to

  -see a table listing budgets by budget name and last time updated
  -when I log in

  Scenario: Login and then See Table Page
    Given a testuser
    Given I have two budgets created in the system
    Given I'm logged in as a testuser
    Then I should be on the budgets path
    Then show me the page
    Then I should see the two budgets' names displayed